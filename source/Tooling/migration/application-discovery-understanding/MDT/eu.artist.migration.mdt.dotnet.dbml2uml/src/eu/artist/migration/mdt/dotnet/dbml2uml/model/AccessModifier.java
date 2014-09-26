/*******************************************************************************
 * Copyright (c) 2014 Spikes N.V.
 * All rights reserved. This program and the accompanying materials
 * are made available under the terms of the Eclipse Public License v1.0
 * which accompanies this distribution, and is available at
 * http://www.eclipse.org/legal/epl-v10.html
 *
 * Contributors:
 *     Spikes - Initial implementation
 * 	Initially developed in the context of ARTIST EU project www.artist-project.eu
 *******************************************************************************/
//
// This file was generated by the JavaTM Architecture for XML Binding(JAXB) Reference Implementation, v2.2.4-2 
// See <a href="http://java.sun.com/xml/jaxb">http://java.sun.com/xml/jaxb</a> 
// Any modifications to this file will be lost upon recompilation of the source schema. 
// Generated on: 2014.04.02 at 02:42:29 PM CEST 
//


package eu.artist.migration.mdt.dotnet.dbml2uml.model;

import javax.xml.bind.annotation.XmlEnum;
import javax.xml.bind.annotation.XmlEnumValue;
import javax.xml.bind.annotation.XmlType;


/**
 * <p>Java class for AccessModifier.
 * 
 * <p>The following schema fragment specifies the expected content contained within this class.
 * <p>
 * <pre>
 * &lt;simpleType name="AccessModifier">
 *   &lt;restriction base="{http://www.w3.org/2001/XMLSchema}string">
 *     &lt;enumeration value="Public"/>
 *     &lt;enumeration value="Internal"/>
 *     &lt;enumeration value="Protected"/>
 *     &lt;enumeration value="ProtectedInternal"/>
 *     &lt;enumeration value="Private"/>
 *   &lt;/restriction>
 * &lt;/simpleType>
 * </pre>
 * 
 */
@XmlType(name = "AccessModifier")
@XmlEnum
public enum AccessModifier {

    @XmlEnumValue("Public")
    PUBLIC("Public"),
    @XmlEnumValue("Internal")
    INTERNAL("Internal"),
    @XmlEnumValue("Protected")
    PROTECTED("Protected"),
    @XmlEnumValue("ProtectedInternal")
    PROTECTED_INTERNAL("ProtectedInternal"),
    @XmlEnumValue("Private")
    PRIVATE("Private");
    private final String value;

    AccessModifier(String v) {
        value = v;
    }

    public String value() {
        return value;
    }

    public static AccessModifier fromValue(String v) {
        for (AccessModifier c: AccessModifier.values()) {
            if (c.value.equals(v)) {
                return c;
            }
        }
        throw new IllegalArgumentException(v);
    }

}
