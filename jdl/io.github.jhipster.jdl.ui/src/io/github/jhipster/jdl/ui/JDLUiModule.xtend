/**
 * Copyright 2013-2020 the original author or authors from the JHipster project.
 * 
 * This file is part of the JHipster project, see http://www.jhipster.tech/
 * for more information.
 * 
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 * 
 *      http://www.apache.org/licenses/LICENSE-2.0
 * 
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */
package io.github.jhipster.jdl.ui

import io.github.jhipster.jdl.ide.contentassist.JdlIdeContentProposalProvider
import io.github.jhipster.jdl.ui.editor.syntaxcoloring.JDLHighlightingConfiguration
import io.github.jhipster.jdl.ui.wizard.template.JDLTemplateProjectCreator
import org.eclipse.xtend.lib.annotations.FinalFieldsConstructor
import org.eclipse.xtext.ide.editor.contentassist.IdeContentProposalProvider
import org.eclipse.xtext.ui.editor.contentassist.IContentProposalProvider
import org.eclipse.xtext.ui.editor.contentassist.UiToIdeContentProposalProvider
import org.eclipse.xtext.ui.editor.syntaxcoloring.IHighlightingConfiguration
import org.eclipse.xtext.ui.wizard.IProjectCreator

/**
 * Use this class to register components to be used within the Eclipse IDE.
 * 
 * @author Serano Colameo - Initial contribution and API
 */
@FinalFieldsConstructor
class JDLUiModule extends AbstractJDLUiModule {

	def Class<? extends IdeContentProposalProvider> bindIdeContentProposalProvider() {
		return JdlIdeContentProposalProvider
	}

	override Class<? extends IContentProposalProvider> bindIContentProposalProvider() {
		return UiToIdeContentProposalProvider
	}

	override Class<? extends IProjectCreator> bindIProjectCreator() {
		return JDLTemplateProjectCreator
	}

	def Class<? extends IHighlightingConfiguration> bindIHighlightingConfiguration() {
		return JDLHighlightingConfiguration
	}
}
