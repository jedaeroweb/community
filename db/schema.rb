# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.1].define(version: 2024_07_07_134915) do
  create_table "action_text_rich_texts", force: :cascade do |t|
    t.string "name", null: false
    t.text "body"
    t.string "record_type", null: false
    t.bigint "record_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["record_type", "record_id", "name"], name: "index_action_text_rich_texts_uniqueness", unique: true
  end

  create_table "active_storage_attachments", force: :cascade do |t|
    t.string "name", null: false
    t.string "record_type", null: false
    t.bigint "record_id", null: false
    t.bigint "blob_id", null: false
    t.datetime "created_at", precision: nil, null: false
    t.index ["blob_id"], name: "index_active_storage_attachments_on_blob_id"
    t.index ["record_type", "record_id", "name", "blob_id"], name: "index_active_storage_attachments_uniqueness", unique: true
  end

  create_table "active_storage_blobs", force: :cascade do |t|
    t.string "key", null: false
    t.string "filename", null: false
    t.string "content_type"
    t.text "metadata"
    t.string "service_name", null: false
    t.bigint "byte_size", null: false
    t.string "checksum", null: false
    t.datetime "created_at", precision: nil, null: false
    t.index ["key"], name: "index_active_storage_blobs_on_key", unique: true
  end

  create_table "active_storage_variant_records", force: :cascade do |t|
    t.bigint "blob_id", null: false
    t.string "variation_digest", null: false
    t.index ["blob_id", "variation_digest"], name: "index_active_storage_variant_records_uniqueness", unique: true
  end

  create_table "address_levels", force: :cascade do |t|
    t.string "title", limit: 60, null: false
    t.integer "addresses_count", default: 0, null: false
    t.boolean "enable", default: true, null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "addresses", force: :cascade do |t|
    t.bigint "parent_address_id", default: 0, null: false
    t.bigint "address_level_id", default: 1, null: false
    t.string "title", limit: 60, null: false
    t.integer "ads_count", default: 0, null: false
    t.integer "company_addresses_count", default: 0, null: false
    t.boolean "enable", default: true, null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["address_level_id"], name: "index_addresses_on_address_level_id"
    t.index ["parent_address_id"], name: "index_addresses_on_parent_address_id"
    t.index ["title"], name: "index_addresses_on_title"
  end

  create_table "admin_login_logs", force: :cascade do |t|
    t.bigint "admin_id", null: false
    t.bigint "client_ip", null: false
    t.boolean "enable", default: true, null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["admin_id"], name: "index_admin_login_logs_on_admin_id"
  end

  create_table "admin_pictures", force: :cascade do |t|
    t.bigint "admin_id", null: false
    t.string "picture", null: false
    t.boolean "enable", default: true, null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["admin_id"], name: "index_admin_pictures_on_admin_id"
  end

  create_table "admins", force: :cascade do |t|
    t.string "email", limit: 100, null: false
    t.string "name", limit: 100, null: false
    t.string "encrypted_password", limit: 60, null: false
    t.datetime "remember_created_at", precision: nil
    t.integer "sign_in_count", default: 0
    t.datetime "current_sign_in_at", precision: nil
    t.datetime "last_sign_in_at", precision: nil
    t.string "current_sign_in_ip"
    t.string "last_sign_in_ip"
    t.boolean "enable", default: true, null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_admins_on_email", unique: true
  end

  create_table "answers", force: :cascade do |t|
    t.bigint "question_id", null: false
    t.bigint "user_id", null: false
    t.boolean "accepted", default: false, null: false
    t.boolean "enable", default: true, null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["question_id"], name: "index_answers_on_question_id"
    t.index ["user_id"], name: "index_answers_on_user_id"
  end

  create_table "authentication_providers", id: :integer, force: :cascade do |t|
    t.string "name", limit: 60, null: false
    t.datetime "created_at", precision: nil, null: false
    t.datetime "updated_at", precision: nil, null: false
    t.index ["name"], name: "index_name_on_authentication_providers"
  end

  create_table "blog_categories", force: :cascade do |t|
    t.string "title", limit: 60, null: false
    t.integer "blogs_count", default: 0, null: false
    t.boolean "enable", default: true, null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "blog_pictures", force: :cascade do |t|
    t.bigint "blog_id", null: false
    t.string "picture", null: false
    t.boolean "enable", default: true, null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["blog_id"], name: "index_blog_pictures_on_blog_id"
  end

  create_table "blogs", force: :cascade do |t|
    t.bigint "program_language_id", null: false
    t.bigint "program_category_id"
    t.bigint "blog_category_id", null: false
    t.bigint "user_id", null: false
    t.string "title", limit: 60, null: false
    t.integer "blog_comments_count", default: 0, null: false
    t.integer "blog_pictures_count", default: 0, null: false
    t.integer "count", default: 0, null: false
    t.boolean "enable", default: true, null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "cached_votes_total", default: 0
    t.integer "cached_votes_score", default: 0
    t.integer "cached_votes_up", default: 0
    t.integer "cached_votes_down", default: 0
    t.integer "cached_weighted_score", default: 0
    t.integer "cached_weighted_total", default: 0
    t.float "cached_weighted_average", default: 0.0
    t.index ["blog_category_id"], name: "index_blogs_on_blog_category_id"
    t.index ["cached_votes_down"], name: "index_blogs_on_cached_votes_down"
    t.index ["cached_votes_score"], name: "index_blogs_on_cached_votes_score"
    t.index ["cached_votes_total"], name: "index_blogs_on_cached_votes_total"
    t.index ["cached_votes_up"], name: "index_blogs_on_cached_votes_up"
    t.index ["cached_weighted_average"], name: "index_blogs_on_cached_weighted_average"
    t.index ["cached_weighted_score"], name: "index_blogs_on_cached_weighted_score"
    t.index ["cached_weighted_total"], name: "index_blogs_on_cached_weighted_total"
    t.index ["program_category_id"], name: "index_blogs_on_program_category_id"
    t.index ["program_language_id"], name: "index_blogs_on_program_language_id"
    t.index ["user_id"], name: "index_blogs_on_user_id"
  end

  create_table "comments", force: :cascade do |t|
    t.integer "commentable_id"
    t.string "commentable_type"
    t.string "title"
    t.text "body"
    t.string "subject"
    t.integer "user_id", null: false
    t.integer "parent_id"
    t.integer "lft"
    t.integer "rgt"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["commentable_id", "commentable_type"], name: "index_comments_on_commentable_id_and_commentable_type"
  end

  create_table "companies", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.string "title", null: false
    t.string "phone", null: false
    t.string "code", limit: 20
    t.string "lat", limit: 60
    t.string "lng", limit: 60
    t.time "start_time", precision: 7, default: '09:00:00.0', null: false
    t.time "end_time", precision: 7, default: '06:00:00.0', null: false
    t.boolean "basic", default: false, null: false
    t.integer "company_addresses_count", default: 0, null: false
    t.integer "company_pictures_count", default: 0, null: false
    t.boolean "enable", default: true, null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_companies_on_user_id"
  end

  create_table "company_addresses", force: :cascade do |t|
    t.bigint "company_id", null: false
    t.bigint "address_id", null: false
    t.boolean "enable", default: true, null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["address_id"], name: "index_company_addresses_on_address_id"
    t.index ["company_id"], name: "index_company_addresses_on_company_id"
  end

  create_table "company_pictures", force: :cascade do |t|
    t.bigint "company_id", null: false
    t.string "picture", null: false
    t.string "caption", limit: 60
    t.boolean "enable", default: true, null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["company_id"], name: "index_company_pictures_on_company_id"
  end

  create_table "contact_categories", force: :cascade do |t|
    t.string "title", null: false
    t.integer "contacts_count", default: 0, null: false
    t.boolean "enable", default: true, null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "galleries", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.string "title", limit: 60, null: false
    t.string "location", limit: 255
    t.string "photo", null: false
    t.string "content", limit: 250, null: false
    t.boolean "enable", default: true, null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_galleries_on_user_id"
  end

  create_table "impressions", force: :cascade do |t|
    t.string "impressionable_type"
    t.integer "impressionable_id"
    t.integer "user_id"
    t.string "controller_name"
    t.string "action_name"
    t.string "view_name"
    t.string "request_hash"
    t.string "ip_address"
    t.string "session_hash"
    t.text "message"
    t.text "referrer"
    t.text "params"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["controller_name", "action_name", "ip_address"], name: "controlleraction_ip_index"
    t.index ["controller_name", "action_name", "request_hash"], name: "controlleraction_request_index"
    t.index ["controller_name", "action_name", "session_hash"], name: "controlleraction_session_index"
    t.index ["impressionable_type", "impressionable_id", "ip_address"], name: "poly_ip_index"
    t.index ["impressionable_type", "impressionable_id", "request_hash"], name: "poly_request_index"
    t.index ["impressionable_type", "impressionable_id", "session_hash"], name: "poly_session_index"
    t.index ["user_id"], name: "index_impressions_on_user_id"
  end

  create_table "jobs", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.string "title", limit: 60, null: false
    t.boolean "enable", default: true, null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_jobs_on_user_id"
  end

  create_table "markets", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.string "title", limit: 60, null: false
    t.boolean "enable", default: true, null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_markets_on_user_id"
  end

  create_table "notice_pictures", force: :cascade do |t|
    t.bigint "notice_id", null: false
    t.string "picture", null: false
    t.string "caption", limit: 60
    t.boolean "enable", default: true, null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["notice_id"], name: "index_notice_pictures_on_notice_id"
  end

  create_table "notices", force: :cascade do |t|
    t.string "title", limit: 60, null: false
    t.integer "notice_pictures_count", default: 0, null: false
    t.boolean "slide_show", default: true, null: false
    t.boolean "enable", default: true, null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "program_categories", id: :integer, force: :cascade do |t|
    t.integer "program_language_id", null: false
    t.string "title", limit: 60, null: false
    t.string "link", limit: 200
    t.integer "program_categories_programs_count", default: 0, null: false
    t.boolean "main", default: true, null: false
    t.boolean "enable", default: true, null: false
    t.datetime "created_at", precision: nil, null: false
    t.datetime "updated_at", precision: nil, null: false
  end

  create_table "program_languages", id: :integer, force: :cascade do |t|
    t.string "title", limit: 60, null: false
    t.string "link", limit: 200
    t.integer "blogs_count", default: 0, null: false
    t.integer "questions_count", default: 0, null: false
    t.integer "program_categories_count", default: 0, null: false
    t.boolean "enable", default: true, null: false
    t.datetime "created_at", precision: nil, null: false
    t.datetime "updated_at", precision: nil, null: false
  end

  create_table "question_categories", force: :cascade do |t|
    t.string "title", null: false
    t.integer "questions_count", default: 0, null: false
    t.boolean "enable", default: true, null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "question_comments", force: :cascade do |t|
    t.bigint "question_id", null: false
    t.bigint "user_id"
    t.text "content", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["question_id"], name: "index_question_comments_on_question_id"
    t.index ["user_id"], name: "index_question_comments_on_user_id"
  end

  create_table "question_pictures", force: :cascade do |t|
    t.bigint "question_id", null: false
    t.string "picture", null: false
    t.boolean "enable", default: true, null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["question_id"], name: "index_question_pictures_on_question_id"
  end

  create_table "questions", force: :cascade do |t|
    t.bigint "question_category_id", null: false
    t.bigint "user_id", null: false
    t.bigint "program_language_id", null: false
    t.bigint "program_category_id"
    t.string "title", limit: 60, null: false
    t.integer "question_comments_count", default: 0, null: false
    t.integer "question_pictures_count", default: 0, null: false
    t.integer "answers_count", default: 0, null: false
    t.integer "count", default: 0, null: false
    t.boolean "enable", default: true, null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "cached_votes_total", default: 0
    t.integer "cached_votes_score", default: 0
    t.integer "cached_votes_up", default: 0
    t.integer "cached_votes_down", default: 0
    t.integer "cached_weighted_score", default: 0
    t.integer "cached_weighted_total", default: 0
    t.float "cached_weighted_average", default: 0.0
    t.index ["cached_votes_down"], name: "index_questions_on_cached_votes_down"
    t.index ["cached_votes_score"], name: "index_questions_on_cached_votes_score"
    t.index ["cached_votes_total"], name: "index_questions_on_cached_votes_total"
    t.index ["cached_votes_up"], name: "index_questions_on_cached_votes_up"
    t.index ["cached_weighted_average"], name: "index_questions_on_cached_weighted_average"
    t.index ["cached_weighted_score"], name: "index_questions_on_cached_weighted_score"
    t.index ["cached_weighted_total"], name: "index_questions_on_cached_weighted_total"
    t.index ["program_category_id"], name: "index_questions_on_program_category_id"
    t.index ["program_language_id"], name: "index_questions_on_program_language_id"
    t.index ["question_category_id"], name: "index_questions_on_question_category_id"
    t.index ["user_id"], name: "index_questions_on_user_id"
  end

  create_table "role_admins", force: :cascade do |t|
    t.bigint "role_id", null: false
    t.bigint "admin_id", null: false
    t.index ["admin_id"], name: "index_role_admins_on_admin_id"
    t.index ["role_id"], name: "index_role_admins_on_role_id"
  end

  create_table "roles", force: :cascade do |t|
    t.string "title", limit: 60, null: false
    t.string "role", limit: 60, null: false
    t.boolean "enable", default: true, null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "taggings", id: :integer, force: :cascade do |t|
    t.integer "tag_id"
    t.string "taggable_type"
    t.integer "taggable_id"
    t.string "tagger_type"
    t.integer "tagger_id"
    t.string "context", limit: 128
    t.datetime "created_at", precision: nil
    t.index ["context"], name: "index_taggings_on_context"
    t.index ["tag_id", "taggable_id", "taggable_type", "context", "tagger_id", "tagger_type"], name: "taggings_idx", unique: true
    t.index ["tag_id"], name: "index_taggings_on_tag_id"
    t.index ["taggable_id", "taggable_type", "context"], name: "index_taggings_on_taggable_id_and_taggable_type_and_context"
    t.index ["taggable_id", "taggable_type", "tagger_id", "context"], name: "taggings_idy"
    t.index ["taggable_id"], name: "index_taggings_on_taggable_id"
    t.index ["taggable_type"], name: "index_taggings_on_taggable_type"
    t.index ["tagger_id", "tagger_type"], name: "index_taggings_on_tagger_id_and_tagger_type"
    t.index ["tagger_id"], name: "index_taggings_on_tagger_id"
  end

  create_table "tags", id: :integer, force: :cascade do |t|
    t.string "name"
    t.integer "taggings_count", default: 0
    t.index ["name"], name: "index_tags_on_name", unique: true
  end

  create_table "talk_comments", force: :cascade do |t|
    t.bigint "talk_id", null: false
    t.bigint "user_id"
    t.text "content", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["talk_id"], name: "index_talk_comments_on_talk_id"
    t.index ["user_id"], name: "index_talk_comments_on_user_id"
  end

  create_table "talk_pictures", force: :cascade do |t|
    t.bigint "talk_id", null: false
    t.string "picture", null: false
    t.string "caption", limit: 60
    t.boolean "enable", default: true, null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["talk_id"], name: "index_talk_pictures_on_talk_id"
  end

  create_table "talks", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.string "title", limit: 60, null: false
    t.integer "talk_pictures_count", default: 0, null: false
    t.boolean "enable", default: true, null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "cached_votes_total", default: 0
    t.integer "cached_votes_score", default: 0
    t.integer "cached_votes_up", default: 0
    t.integer "cached_votes_down", default: 0
    t.integer "cached_weighted_score", default: 0
    t.integer "cached_weighted_total", default: 0
    t.float "cached_weighted_average", default: 0.0
    t.index ["cached_votes_down"], name: "index_talks_on_cached_votes_down"
    t.index ["cached_votes_score"], name: "index_talks_on_cached_votes_score"
    t.index ["cached_votes_total"], name: "index_talks_on_cached_votes_total"
    t.index ["cached_votes_up"], name: "index_talks_on_cached_votes_up"
    t.index ["cached_weighted_average"], name: "index_talks_on_cached_weighted_average"
    t.index ["cached_weighted_score"], name: "index_talks_on_cached_weighted_score"
    t.index ["cached_weighted_total"], name: "index_talks_on_cached_weighted_total"
    t.index ["user_id"], name: "index_talks_on_user_id"
  end

  create_table "user_authentications", id: :integer, force: :cascade do |t|
    t.integer "user_id"
    t.integer "authentication_provider_id"
    t.string "uid"
    t.string "token"
    t.datetime "token_expires_at", precision: nil
    t.text "params"
    t.datetime "created_at", precision: nil, null: false
    t.datetime "updated_at", precision: nil, null: false
    t.index ["authentication_provider_id"], name: "index_user_authentications_on_authentication_provider_id"
    t.index ["user_id"], name: "index_user_authentications_on_user_id"
  end

  create_table "user_pictures", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.string "picture", null: false
    t.boolean "enable", default: true, null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_user_pictures_on_user_id"
  end

  create_table "user_point_logs", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.integer "point", default: 0, null: false
    t.boolean "enable", default: true, null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_user_point_logs_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", limit: 200, null: false
    t.string "name"
    t.string "encrypted_password", limit: 60, null: false
    t.datetime "remember_created_at", precision: nil
    t.integer "sign_in_count", default: 0
    t.datetime "current_sign_in_at", precision: nil
    t.datetime "last_sign_in_at", precision: nil
    t.string "current_sign_in_ip"
    t.string "last_sign_in_ip"
    t.integer "user_pictures_count", default: 0, null: false
    t.integer "blogs_count", default: 0, null: false
    t.integer "companies_count", default: 0, null: false
    t.integer "contacts_count", default: 0, null: false
    t.integer "questions_count", default: 0, null: false
    t.integer "answers_count", default: 0, null: false
    t.integer "talks_count", default: 0, null: false
    t.integer "markets_count", default: 0, null: false
    t.integer "jobs_count", default: 0, null: false
    t.integer "point", default: 3000, null: false
    t.string "phone"
    t.string "address"
    t.date "birthday"
    t.boolean "enable", default: true, null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
  end

  create_table "votes", force: :cascade do |t|
    t.string "votable_type"
    t.bigint "votable_id"
    t.string "voter_type"
    t.bigint "voter_id"
    t.boolean "vote_flag"
    t.string "vote_scope"
    t.integer "vote_weight"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["votable_id", "votable_type", "vote_scope"], name: "index_votes_on_votable_id_and_votable_type_and_vote_scope"
    t.index ["votable_type", "votable_id"], name: "index_votes_on_votable_type_and_votable_id"
    t.index ["voter_id", "voter_type", "vote_scope"], name: "index_votes_on_voter_id_and_voter_type_and_vote_scope"
    t.index ["voter_type", "voter_id"], name: "index_votes_on_voter_type_and_voter_id"
  end

  add_foreign_key "active_storage_attachments", "active_storage_blobs", column: "blob_id"
  add_foreign_key "active_storage_variant_records", "active_storage_blobs", column: "blob_id"
end
