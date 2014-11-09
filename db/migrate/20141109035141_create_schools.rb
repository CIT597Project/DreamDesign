class CreateSchools < ActiveRecord::Migration
  def change
    create_table :schools do |t|
      t.integer :UNITID
      t.string :INSTNM
      t.string :ADDR
      t.string :CITY
      t.string :STABBR
      t.string :ZIP
      t.integer :FIPS
      t.integer :OBEREG
      t.string :CHFNM
      t.string :CHFTITLE
      t.integer :GENTELE
      t.integer :FAXTELE
      t.integer :EIN
      t.integer :OPEID
      t.integer :OPEFLAG
      t.string :WEBADDR
      t.string :ADMINURL
      t.string :FAIDURL
      t.string :string
      t.string :APPLURL
      t.string :NPRICURL
      t.integer :SECTOR
      t.integer :ICLEVEL
      t.integer :CONTROL
      t.integer :HLOFFER
      t.integer :UGOFFER
      t.integer :GROFFER
      t.integer :HDEGOFR1
      t.integer :DEGGRANT
      t.integer :HBCU
      t.integer :HOSPITAL
      t.integer :MEDICAL
      t.integer :TRIBAL
      t.integer :LOCALE
      t.integer :OPENPUBL
      t.string :ACT
      t.integer :NEWID
      t.integer :DEATHYR
      t.integer :CLOSEDAT
      t.integer :CYACTIVE
      t.integer :POSTSEC
      t.integer :PSEFLAG
      t.integer :PSET4FLG
      t.integer :RPTMTH
      t.string :IALIAS
      t.integer :INSTCAT
      t.integer :CCBASIC
      t.integer :CCIPUG
      t.integer :CCIPGRAD
      t.integer :CCUGPROF
      t.integer :CCENRPRF
      t.integer :CCSIZSET
      t.integer :CARNEGIE
      t.integer :LANDGRNT
      t.integer :INSTSIZE
      t.integer :CBSA
      t.integer :CBSATYPE
      t.integer :CSA
      t.integer :NECTA
      t.integer :F1SYSTYP
      t.string :F1SYSNAM
      t.integer :F1SYSCOD
      t.integer :COUNTYCD
      t.string :COUNTYNM
      t.integer :CNGDSTCD
      t.float :LONGITUD
      t.float :LATITUDE

      t.timestamps null: false
    end
  end
end
