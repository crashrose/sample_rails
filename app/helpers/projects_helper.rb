module ProjectsHelper

	def project_title_links(project)
		content_tag :h1 do
			[ project.title,
				link_to_icon('new', new_project_role_path(project), title: 'Add Role to Project'),
				link_to_icon('show', project, title: 'Show Project Details'),
				link_to_icon('edit', edit_project_path(project), title: 'Edit Project Details'),
				link_to_icon('destroy', project, {data: {
					:confirm => 'Are you sure?',
					:method => :delete
					}, title: 'Delete Project'})
			].join(' ').html_safe
		end
	end
end
