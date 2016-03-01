class DuplicatePeoplyByCommunityMembership < ActiveRecord::Migration
  def up
    people = select_all("SELECT id FROM people")
    people.each do |p|
      person_id = p['id']
      memberships = select_all("
        SELECT * FROM community_memberships WHERE person_id = #{quote(person_id)}
      ").to_ary
      unless memberships.empty?
        head, *tail = memberships
        insert_people(person_id, tail)
      end
    end
  end

  def down
    execute("
      DELETE FROM people
      WHERE cloned_from IS NOT NULL
    ")
  end

  private

  def insert_people(cloned_from, memberships)
    memberships.each do |m|
      insert_person(cloned_from)
    end
  end

  def insert_person(cloned_from)
    execute("
      INSERT INTO people (
        id,
        created_at,
        updated_at,
        is_admin,
        locale,
        preferences,
        active_days_count,
        last_page_load_date,
        test_group_number,
        active,
        username,
        email,
        encrypted_password,
        reset_password_token,
        reset_password_sent_at,
        remember_created_at,
        sign_in_count,
        current_sign_in_at,
        last_sign_in_at,
        password_salt,
        given_name,
        family_name,
        phone_number,
        description,
        image_file_name,
        image_content_type,
        image_file_size,
        image_updated_at,
        image_processing,
        facebook_id,
        authentication_token,
        community_updates_last_sent_at,
        min_days_between_community_updates,
        is_organization,
        organization_name,
        deleted,
        cloned_from)
        (SELECT
          #{quote(UUID.timestamp_create.to_s22)},
          created_at,
          updated_at,
          is_admin,
          locale,
          preferences,
          active_days_count,
          last_page_load_date,
          test_group_number,
          active,
          username,
          email,
          encrypted_password,
          reset_password_token,
          reset_password_sent_at,
          remember_created_at,
          sign_in_count,
          current_sign_in_at,
          last_sign_in_at,
          password_salt,
          given_name,
          family_name,
          phone_number,
          description,
          image_file_name,
          image_content_type,
          image_file_size,
          image_updated_at,
          image_processing,
          facebook_id,
          authentication_token,
          community_updates_last_sent_at,
          min_days_between_community_updates,
          is_organization,
          organization_name,
          deleted,
          #{quote(cloned_from)}
      FROM people
      WHERE id = #{quote(cloned_from)})
    ")
  end
end
