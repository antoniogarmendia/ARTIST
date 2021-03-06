/*******************************************************************************
 * Copyright (c) 2015 Vienna University of Technology.
 * All rights reserved. This program and the accompanying materials
 * are made available under the terms of the Eclipse Public License v1.0
 * which accompanies this distribution, and is available at
 * http://www.eclipse.org/legal/epl-v10.html
 *
 * Contributors:
 * Martin Fleck (Vienna University of Technology) - initial API and implementation
 *
 * Initially developed in the context of ARTIST EU project www.artist-project.eu
 *******************************************************************************/
package at.ac.tuwien.big.momot.fitness.dimension;

import at.ac.tuwien.big.moea.fitness.dimension.SolutionLengthDimension;
import at.ac.tuwien.big.momot.solution.MatchSolution;
import at.ac.tuwien.big.momot.variable.MatchPlaceholderVariable;

public class MatchSolutionLengthDimension extends SolutionLengthDimension<MatchSolution> {

	public static final String DEFAULT_NAME = "SolutionLength";
	
	public MatchSolutionLengthDimension() {
		this(DEFAULT_NAME);
	}
	
	public MatchSolutionLengthDimension(String name) {
		super(MatchSolution.class, name, FunctionType.Minimum);
		ignoreVariable(MatchPlaceholderVariable.class);
	}

}
