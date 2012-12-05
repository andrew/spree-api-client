module Spree
  module API
    class Client
      module Taxons
        def taxons(taxonomy_id, options={})
          get("taxonomies/#{taxonomy_id}/taxons", options)
        end

        def taxon(taxonomy_id, taxon_id, options={})
          get("taxonomies/#{taxonomy_id}/taxons/#{taxon_id}", options)
        end

        def create_taxon(taxonomy_id, options={})
          post("taxonomies/#{taxonomy_id}/taxons/", options)
        end

        def update_taxon(taxonomy_id, taxon_id, options={})
          put("taxonomies/#{taxonomy_id}/taxons/#{taxon_id}", options)
        end

        def delete_taxon(taxonomy_id, taxon_id, options={})
          delete("taxonomies/#{taxonomy_id}/taxons/#{taxon_id}", options)
        end
      end
    end
  end
end
