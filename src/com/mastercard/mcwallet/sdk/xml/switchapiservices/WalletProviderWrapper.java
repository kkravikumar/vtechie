//
// This file was generated by the JavaTM Architecture for XML Binding(JAXB) Reference Implementation, v2.2.7 
// See <a href="http://java.sun.com/xml/jaxb">http://java.sun.com/xml/jaxb</a> 
// Any modifications to this file will be lost upon recompilation of the source schema. 
// Generated on: 2014.08.21 at 12:22:14 PM CDT 
//


package com.mastercard.mcwallet.sdk.xml.switchapiservices;

import javax.xml.bind.annotation.XmlAccessType;
import javax.xml.bind.annotation.XmlAccessorType;
import javax.xml.bind.annotation.XmlElement;
import javax.xml.bind.annotation.XmlType;


/**
 * <p>Java class for WalletProviderWrapper complex type.
 * 
 * <p>The following schema fragment specifies the expected content contained within this class.
 * 
 * <pre>
 * &lt;complexType name="WalletProviderWrapper">
 *   &lt;complexContent>
 *     &lt;restriction base="{http://www.w3.org/2001/XMLSchema}anyType">
 *       &lt;sequence>
 *         &lt;element name="WalletProvider" type="{}WalletProvider"/>
 *       &lt;/sequence>
 *     &lt;/restriction>
 *   &lt;/complexContent>
 * &lt;/complexType>
 * </pre>
 * 
 * 
 */
@XmlAccessorType(XmlAccessType.FIELD)
@XmlType(name = "WalletProviderWrapper", propOrder = {
    "walletProvider"
})
public class WalletProviderWrapper {

    @XmlElement(name = "WalletProvider", required = true)
    protected WalletProvider walletProvider;

    /**
     * Gets the value of the walletProvider property.
     * 
     * @return
     *     possible object is
     *     {@link WalletProvider }
     *     
     */
    public WalletProvider getWalletProvider() {
        return walletProvider;
    }

    /**
     * Sets the value of the walletProvider property.
     * 
     * @param value
     *     allowed object is
     *     {@link WalletProvider }
     *     
     */
    public void setWalletProvider(WalletProvider value) {
        this.walletProvider = value;
    }

}
