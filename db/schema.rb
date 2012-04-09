# This file is auto-generated from the current state of the database. Instead of editing this file, 
# please use the migrations feature of Active Record to incrementally modify your database, and
# then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your database schema. If you need
# to create the application database on another system, you should be using db:schema:load, not running
# all the migrations from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20090708172100) do

  create_table "authors_reviews", :id => false, :force => true do |t|
    t.integer "author_id", :null => false
    t.integer "review_id", :null => false
  end

  add_index "authors_reviews", ["author_id", "review_id"], :name => "index_authors_reviews_on_author_id_and_review_id", :unique => true

  create_table "disciplines", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "disciplines_person_profiles", :force => true do |t|
    t.integer  "discipline_id"
    t.integer  "person_profile_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "disciplines_project_profiles", :force => true do |t|
    t.integer  "discipline_id"
    t.integer  "project_profile_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "entities", :force => true do |t|
    t.string   "name"
    t.string   "type"
    t.integer  "image_id"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "images", :force => true do |t|
    t.integer  "parent_id"
    t.string   "content_type"
    t.string   "filename"
    t.string   "thumbnail"
    t.integer  "size"
    t.integer  "width"
    t.integer  "height"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "line_items", :force => true do |t|
    t.string   "text"
    t.string   "category"
    t.integer  "person_profile_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "links", :force => true do |t|
    t.string   "url"
    t.string   "label"
    t.integer  "entity_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "open_id_authentication_associations", :force => true do |t|
    t.binary  "server_url"
    t.string  "handle"
    t.binary  "secret"
    t.integer "issued"
    t.integer "lifetime"
    t.string  "assoc_type"
  end

  create_table "open_id_authentication_nonces", :force => true do |t|
    t.string  "nonce"
    t.integer "created"
  end

  create_table "open_id_authentication_settings", :force => true do |t|
    t.string "setting"
    t.binary "value"
  end

  create_table "person_profiles", :force => true do |t|
    t.string   "first_name"
    t.string   "middle_initial"
    t.string   "last_name"
    t.string   "title"
    t.text     "professional_profile"
    t.string   "home_page"
    t.text     "overview"
    t.text     "focus"
    t.text     "activities_overview"
    t.text     "goals"
    t.integer  "person_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.text     "works_overview"
    t.text     "publications"
    t.text     "tools"
    t.text     "websites"
    t.text     "miscellaneous"
    t.text     "skills"
    t.text     "notes"
    t.string   "address_one"
    t.string   "address_two"
    t.string   "city"
    t.string   "country"
    t.string   "state"
    t.string   "zipcode"
    t.string   "office_phone"
    t.string   "cell_phone"
    t.string   "other_contact"
    t.string   "other_contact_type"
    t.string   "cv_link"
    t.string   "home_phone"
    t.string   "email"
    t.text     "interests"
  end

  create_table "post_kinds", :force => true do |t|
    t.string   "post_kind_id"
    t.string   "post_kind_value"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "posts", :force => true do |t|
    t.string   "subject"
    t.text     "body"
    t.integer  "entity_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "sponsor_entity_id"
    t.string   "post_kind_id"
    t.string   "post_category"
    t.datetime "expiration_date"
    t.string   "response_email"
  end

  create_table "professional_profile_links", :force => true do |t|
    t.integer  "professional_profile_id"
    t.integer  "person_profile_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "professional_profiles", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "project_profiles", :force => true do |t|
    t.string   "home_page"
    t.text     "overview"
    t.text     "current_directions"
    t.text     "outcomes"
    t.text     "address"
    t.string   "phone"
    t.string   "fax"
    t.string   "contact_email"
    t.integer  "project_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.text     "people"
    t.text     "sponsors"
    t.text     "data"
    t.text     "tools"
    t.text     "training"
    t.text     "events"
    t.text     "opportunities"
    t.text     "other"
    t.text     "history"
    t.string   "address_one"
    t.string   "address_two"
    t.string   "city"
    t.string   "country"
    t.string   "state"
    t.string   "zipcode"
    t.text     "notes"
    t.text     "synopsis"
    t.text     "interests"
  end

  create_table "pxaUroik_comments", :primary_key => "comment_ID", :force => true do |t|
    t.integer  "comment_post_ID",                     :default => 0,   :null => false
    t.text     "comment_author",       :limit => 255,                  :null => false
    t.string   "comment_author_email", :limit => 100, :default => "",  :null => false
    t.string   "comment_author_url",   :limit => 200, :default => "",  :null => false
    t.string   "comment_author_IP",    :limit => 100, :default => "",  :null => false
    t.datetime "comment_date",                                         :null => false
    t.datetime "comment_date_gmt",                                     :null => false
    t.text     "comment_content",                                      :null => false
    t.integer  "comment_karma",                       :default => 0,   :null => false
    t.string   "comment_approved",     :limit => 20,  :default => "1", :null => false
    t.string   "comment_agent",                       :default => "",  :null => false
    t.string   "comment_type",         :limit => 20,  :default => "",  :null => false
    t.integer  "comment_parent",       :limit => 8,   :default => 0,   :null => false
    t.integer  "user_id",              :limit => 8,   :default => 0,   :null => false
  end

  add_index "pxaUroik_comments", ["comment_approved", "comment_date_gmt"], :name => "comment_approved_date_gmt"
  add_index "pxaUroik_comments", ["comment_approved"], :name => "comment_approved"
  add_index "pxaUroik_comments", ["comment_date_gmt"], :name => "comment_date_gmt"
  add_index "pxaUroik_comments", ["comment_post_ID"], :name => "comment_post_ID"

  create_table "pxaUroik_links", :primary_key => "link_id", :force => true do |t|
    t.string   "link_url",                             :default => "",  :null => false
    t.string   "link_name",                            :default => "",  :null => false
    t.string   "link_image",                           :default => "",  :null => false
    t.string   "link_target",      :limit => 25,       :default => "",  :null => false
    t.integer  "link_category",    :limit => 8,        :default => 0,   :null => false
    t.string   "link_description",                     :default => "",  :null => false
    t.string   "link_visible",     :limit => 20,       :default => "Y", :null => false
    t.integer  "link_owner",                           :default => 1,   :null => false
    t.integer  "link_rating",                          :default => 0,   :null => false
    t.datetime "link_updated",                                          :null => false
    t.string   "link_rel",                             :default => "",  :null => false
    t.text     "link_notes",       :limit => 16777215,                  :null => false
    t.string   "link_rss",                             :default => "",  :null => false
  end

  add_index "pxaUroik_links", ["link_category"], :name => "link_category"
  add_index "pxaUroik_links", ["link_visible"], :name => "link_visible"

  create_table "pxaUroik_options", :id => false, :force => true do |t|
    t.integer "option_id",    :limit => 8,                             :null => false
    t.integer "blog_id",                            :default => 0,     :null => false
    t.string  "option_name",  :limit => 64,         :default => "",    :null => false
    t.text    "option_value", :limit => 2147483647,                    :null => false
    t.string  "autoload",     :limit => 20,         :default => "yes", :null => false
  end

  add_index "pxaUroik_options", ["option_name"], :name => "option_name"

  create_table "pxaUroik_postmeta", :primary_key => "meta_id", :force => true do |t|
    t.integer "post_id",    :limit => 8,          :default => 0, :null => false
    t.string  "meta_key"
    t.text    "meta_value", :limit => 2147483647
  end

  add_index "pxaUroik_postmeta", ["meta_key"], :name => "meta_key"
  add_index "pxaUroik_postmeta", ["post_id"], :name => "post_id"

  create_table "pxaUroik_posts", :primary_key => "ID", :force => true do |t|
    t.integer  "post_author",           :limit => 8,          :default => 0,         :null => false
    t.datetime "post_date",                                                          :null => false
    t.datetime "post_date_gmt",                                                      :null => false
    t.text     "post_content",          :limit => 2147483647,                        :null => false
    t.text     "post_title",                                                         :null => false
    t.integer  "post_category",                               :default => 0,         :null => false
    t.text     "post_excerpt",                                                       :null => false
    t.string   "post_status",           :limit => 20,         :default => "publish", :null => false
    t.string   "comment_status",        :limit => 20,         :default => "open",    :null => false
    t.string   "ping_status",           :limit => 20,         :default => "open",    :null => false
    t.string   "post_password",         :limit => 20,         :default => "",        :null => false
    t.string   "post_name",             :limit => 200,        :default => "",        :null => false
    t.text     "to_ping",                                                            :null => false
    t.text     "pinged",                                                             :null => false
    t.datetime "post_modified",                                                      :null => false
    t.datetime "post_modified_gmt",                                                  :null => false
    t.text     "post_content_filtered",                                              :null => false
    t.integer  "post_parent",           :limit => 8,          :default => 0,         :null => false
    t.string   "guid",                                        :default => "",        :null => false
    t.integer  "menu_order",                                  :default => 0,         :null => false
    t.string   "post_type",             :limit => 20,         :default => "post",    :null => false
    t.string   "post_mime_type",        :limit => 100,        :default => "",        :null => false
    t.integer  "comment_count",         :limit => 8,          :default => 0,         :null => false
  end

  add_index "pxaUroik_posts", ["post_name"], :name => "post_name"
  add_index "pxaUroik_posts", ["post_parent"], :name => "post_parent"
  add_index "pxaUroik_posts", ["post_type", "post_status", "post_date", "ID"], :name => "type_status_date"

  create_table "pxaUroik_term_relationships", :id => false, :force => true do |t|
    t.integer "object_id",        :limit => 8, :default => 0, :null => false
    t.integer "term_taxonomy_id", :limit => 8, :default => 0, :null => false
    t.integer "term_order",                    :default => 0, :null => false
  end

  add_index "pxaUroik_term_relationships", ["term_taxonomy_id"], :name => "term_taxonomy_id"

  create_table "pxaUroik_term_taxonomy", :primary_key => "term_taxonomy_id", :force => true do |t|
    t.integer "term_id",     :limit => 8,          :default => 0,  :null => false
    t.string  "taxonomy",    :limit => 32,         :default => "", :null => false
    t.text    "description", :limit => 2147483647,                 :null => false
    t.integer "parent",      :limit => 8,          :default => 0,  :null => false
    t.integer "count",       :limit => 8,          :default => 0,  :null => false
  end

  add_index "pxaUroik_term_taxonomy", ["term_id", "taxonomy"], :name => "term_id_taxonomy", :unique => true

  create_table "pxaUroik_terms", :primary_key => "term_id", :force => true do |t|
    t.string  "name",       :limit => 200, :default => "", :null => false
    t.string  "slug",       :limit => 200, :default => "", :null => false
    t.integer "term_group", :limit => 8,   :default => 0,  :null => false
  end

  add_index "pxaUroik_terms", ["name"], :name => "name"
  add_index "pxaUroik_terms", ["slug"], :name => "slug", :unique => true

  create_table "pxaUroik_usermeta", :primary_key => "umeta_id", :force => true do |t|
    t.integer "user_id",    :limit => 8,          :default => 0, :null => false
    t.string  "meta_key"
    t.text    "meta_value", :limit => 2147483647
  end

  add_index "pxaUroik_usermeta", ["meta_key"], :name => "meta_key"
  add_index "pxaUroik_usermeta", ["user_id"], :name => "user_id"

  create_table "pxaUroik_users", :primary_key => "ID", :force => true do |t|
    t.string   "user_login",          :limit => 60,  :default => "", :null => false
    t.string   "user_pass",           :limit => 64,  :default => "", :null => false
    t.string   "user_nicename",       :limit => 50,  :default => "", :null => false
    t.string   "user_email",          :limit => 100, :default => "", :null => false
    t.string   "user_url",            :limit => 100, :default => "", :null => false
    t.datetime "user_registered",                                    :null => false
    t.string   "user_activation_key", :limit => 60,  :default => "", :null => false
    t.integer  "user_status",                        :default => 0,  :null => false
    t.string   "display_name",        :limit => 250, :default => "", :null => false
  end

  add_index "pxaUroik_users", ["user_login"], :name => "user_login_key"
  add_index "pxaUroik_users", ["user_nicename"], :name => "user_nicename"

  create_table "relation_types", :force => true do |t|
    t.string   "name"
    t.integer  "created_by"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "relationships", :force => true do |t|
    t.integer  "project_id"
    t.integer  "person_id"
    t.integer  "organization_id"
    t.integer  "relation_type_id"
    t.string   "description"
    t.integer  "created_by"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "tool_id"
  end

  create_table "reviews", :force => true do |t|
    t.integer  "tool_id",                       :null => false
    t.text     "content"
    t.boolean  "is_primary", :default => false, :null => false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "sessions", :force => true do |t|
    t.string   "session_id", :default => "", :null => false
    t.text     "data"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "sessions", ["session_id"], :name => "index_sessions_on_session_id"
  add_index "sessions", ["updated_at"], :name => "index_sessions_on_updated_at"

  create_table "subject_links", :force => true do |t|
    t.integer  "subject_id",       :null => false
    t.integer  "subjectable_id",   :null => false
    t.string   "subjectable_type", :null => false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "subjects", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "taggings", :force => true do |t|
    t.integer  "tag_id"
    t.integer  "taggable_id"
    t.integer  "tagger_id"
    t.string   "tagger_type"
    t.string   "taggable_type"
    t.string   "context"
    t.datetime "created_at"
  end

  add_index "taggings", ["tag_id"], :name => "index_taggings_on_tag_id"
  add_index "taggings", ["taggable_id", "taggable_type", "context"], :name => "index_taggings_on_taggable_id_and_taggable_type_and_context"

  create_table "tags", :force => true do |t|
    t.string "name"
  end

  create_table "tool_profiles", :force => true do |t|
    t.text     "summary"
    t.text     "license"
    t.text     "cost"
    t.string   "home_page"
    t.string   "download_page"
    t.text     "features"
    t.text     "teaching_scenarios"
    t.text     "research_scenarios"
    t.text     "engagement_scenarios"
    t.text     "version_history"
    t.text     "technical_details"
    t.text     "support"
    t.text     "developer_resources"
    t.text     "mailing_list"
    t.text     "discussion_forums"
    t.text     "tutorials"
    t.text     "tips"
    t.text     "more_information"
    t.integer  "tool_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "tool_type_id"
  end

  create_table "users", :force => true do |t|
    t.string   "login"
    t.string   "email"
    t.string   "crypted_password",          :limit => 40
    t.string   "salt",                      :limit => 40
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "remember_token"
    t.datetime "remember_token_expires_at"
    t.string   "type"
    t.string   "identity_url"
    t.string   "access_level"
    t.boolean  "request_full"
    t.boolean  "banned"
    t.string   "netbadgeid"
  end

end
