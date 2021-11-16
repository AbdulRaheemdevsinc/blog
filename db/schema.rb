# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20_211_115_103_323) do
  create_table 'Assemblies_Parts', id: false, force: :cascade do |t|
    t.integer 'Assembly_id', null: false
    t.integer 'Part_id', null: false
    t.index %w[Assembly_id Part_id], name: 'index_Assemblies_Parts_on_assembly_id_and_part_id'
    t.index %w[Part_id Assembly_id], name: 'index_Assemblies_Parts_on_part_id_and_assembly_id'
  end

  create_table 'articles', force: :cascade do |t|
    t.string 'title'
    t.text 'text'
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
  end

  create_table 'assemblies', force: :cascade do |t|
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
  end

  create_table 'comments', force: :cascade do |t|
    t.string 'commenter'
    t.text 'body'
    t.integer 'article_id'
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
    t.index ['article_id'], name: 'index_comments_on_article_id'
  end

  create_table 'companies', force: :cascade do |t|
    t.integer 'market_value'
    t.string 'name'
    t.integer 'country_id'
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
    t.index ['country_id'], name: 'index_companies_on_country_id'
  end

  create_table 'company_people', force: :cascade do |t|
    t.integer 'person_id'
    t.integer 'company_id'
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
    t.index ['company_id'], name: 'index_company_people_on_company_id'
    t.index ['person_id'], name: 'index_company_people_on_person_id'
  end

  create_table 'countries', force: :cascade do |t|
    t.integer 'gdb'
    t.string 'name'
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
  end

  create_table 'countryts', force: :cascade do |t|
    t.integer 'gdb'
    t.string 'name'
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
  end

  create_table 'employees', force: :cascade do |t|
    t.string 'name'
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
  end

  create_table 'emps', force: :cascade do |t|
    t.string 'account'
    t.integer 'emp_id'
    t.integer 'manager_id'
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
  end

  create_table 'parts', force: :cascade do |t|
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
  end

  create_table 'people', force: :cascade do |t|
    t.date 'birth_date'
    t.string 'first_name'
    t.string 'last_name'
    t.integer 'country_id'
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
    t.index ['country_id'], name: 'index_people_on_country_id'
  end

  create_table 'pictures', force: :cascade do |t|
    t.string 'name'
    t.string 'imageable_type'
    t.integer 'imageable_id'
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
    t.index %w[imageable_type imageable_id], name: 'index_pictures_on_imageable_type_and_imageable_id'
  end

  create_table 'products', force: :cascade do |t|
    t.string 'name'
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
  end

  create_table 'students', force: :cascade do |t|
    t.string 'name'
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
  end

  create_table 'subjects', force: :cascade do |t|
    t.string 'name'
    t.date 'time'
    t.integer 'student_id'
    t.integer 'teacher_id'
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
    t.index ['student_id'], name: 'index_subjects_on_student_id'
    t.index ['teacher_id'], name: 'index_subjects_on_teacher_id'
  end

  create_table 'teachers', force: :cascade do |t|
    t.string 'name'
    t.integer 'age'
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
  end

  create_table 'us', force: :cascade do |t|
    t.string 'email', default: '', null: false
    t.string 'encrypted_password', default: '', null: false
    t.string 'reset_password_token'
    t.datetime 'reset_password_sent_at'
    t.datetime 'remember_created_at'
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
    t.index ['email'], name: 'index_us_on_email', unique: true
    t.index ['reset_password_token'], name: 'index_us_on_reset_password_token', unique: true
  end

  create_table 'users', force: :cascade do |t|
    t.string 'name'
    t.string 'email'
    t.string 'login'
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
    t.string 'password_digest'
  end

  create_table 'vehicles', force: :cascade do |t|
    t.string 'type'
    t.string 'color'
    t.decimal 'price', precision: 10, scale: 2
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
  end
end
