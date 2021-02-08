LOCAL_PATH:= $(call my-dir)
include $(CLEAR_VARS)

LOCAL_MODULE := librocket_static

LOCAL_C_INCLUDES := $(LOCAL_PATH)/include \
			$(LOCAL_PATH)/../freetype2_static/include


LOCAL_SRC_FILES := source/Controls/Clipboard.cpp \
	source/Controls/Controls.cpp \
	source/Controls/DataFormatter.cpp \
	source/Controls/DataQuery.cpp \
	source/Controls/DataSource.cpp \
	source/Controls/DataSourceListener.cpp \
	source/Controls/ElementDataGrid.cpp \
	source/Controls/ElementDataGridCell.cpp \
	source/Controls/ElementDataGridExpandButton.cpp \
	source/Controls/ElementDataGridRow.cpp \
	source/Controls/ElementForm.cpp \
	source/Controls/ElementFormControl.cpp \
	source/Controls/ElementFormControlDataSelect.cpp \
	source/Controls/ElementFormControlInput.cpp \
	source/Controls/ElementFormControlSelect.cpp\
	source/Controls/ElementFormControlTextArea.cpp \
	source/Controls/ElementTabSet.cpp \
	source/Controls/ElementTextSelection.cpp \
	source/Controls/InputType.cpp \
	source/Controls/InputTypeButton.cpp \
	source/Controls/InputTypeCheckbox.cpp \
	source/Controls/InputTypeRadio.cpp \
	source/Controls/InputTypeRange.cpp \
	source/Controls/InputTypeSubmit.cpp \
	source/Controls/InputTypeText.cpp \
	source/Controls/SelectOption.cpp \
	source/Controls/WidgetDropDown.cpp \
	source/Controls/WidgetSlider.cpp \
	source/Controls/WidgetSliderInput.cpp \
	source/Controls/WidgetTextInput.cpp \
	source/Controls/WidgetTextInputMultiLine.cpp \
	source/Controls/WidgetTextInputSingleLine.cpp \
	source/Controls/WidgetTextInputSingleLinePassword.cpp \
	source/Controls/XMLNodeHandlerDataGrid.cpp \
	source/Controls/XMLNodeHandlerTabSet.cpp \
	source/Controls/XMLNodeHandlerTextArea.cpp \
	source/Core/BaseXMLParser.cpp \
	source/Core/Box.cpp \
	source/Core/Clock.cpp \
	source/Core/Context.cpp \
	source/Core/ContextInstancer.cpp \
	source/Core/ContextInstancerDefault.cpp \
	source/Core/ConvolutionFilter.cpp \
	source/Core/Core.cpp \
	source/Core/Decorator.cpp \
	source/Core/DecoratorInstancer.cpp \
	source/Core/DecoratorNone.cpp \
	source/Core/DecoratorNoneInstancer.cpp \
	source/Core/DecoratorTiled.cpp \
	source/Core/DecoratorTiledBox.cpp \
	source/Core/DecoratorTiledBoxInstancer.cpp \
	source/Core/DecoratorTiledHorizontal.cpp \
	source/Core/DecoratorTiledHorizontalInstancer.cpp \
	source/Core/DecoratorTiledImage.cpp \
	source/Core/DecoratorTiledImageInstancer.cpp \
	source/Core/DecoratorTiledInstancer.cpp \
	source/Core/DecoratorTiledVertical.cpp \
	source/Core/DecoratorTiledVerticalInstancer.cpp \
	source/Core/Dictionary.cpp \
	source/Core/DocumentHeader.cpp \
	source/Core/Element.cpp \
	source/Core/ElementBackground.cpp \
	source/Core/ElementBorder.cpp \
	source/Core/ElementDecoration.cpp \
	source/Core/ElementDefinition.cpp \
	source/Core/ElementDocument.cpp \
	source/Core/ElementHandle.cpp \
	source/Core/ElementImage.cpp \
	source/Core/ElementInstancer.cpp \
	source/Core/ElementReference.cpp \
	source/Core/ElementScroll.cpp \
	source/Core/ElementStyle.cpp \
	source/Core/ElementText.cpp \
	source/Core/ElementTextDefault.cpp \
	source/Core/ElementUtilities.cpp \
	source/Core/Event.cpp \
	source/Core/EventDispatcher.cpp \
	source/Core/EventInstancer.cpp \
	source/Core/EventInstancerDefault.cpp \
	source/Core/EventListenerInstancer.cpp \
	source/Core/Factory.cpp \
	source/Core/FileInterface.cpp \
	source/Core/FileInterfaceDefault.cpp \
	source/Core/FontDatabase.cpp \
	source/Core/FontEffect.cpp \
	source/Core/FontEffectInstancer.cpp \
	source/Core/FontEffectNone.cpp \
	source/Core/FontEffectNoneInstancer.cpp \
	source/Core/FontEffectOutline.cpp \
	source/Core/FontEffectOutlineInstancer.cpp \
	source/Core/FontEffectShadow.cpp \
	source/Core/FontEffectShadowInstancer.cpp \
	source/Core/FontFace.cpp \
	source/Core/FontFaceHandle.cpp \
	source/Core/FontFaceLayer.cpp \
	source/Core/FontFamily.cpp \
	source/Core/Geometry.cpp \
	source/Core/GeometryDatabase.cpp \
	source/Core/GeometryUtilities.cpp \
	source/Core/LayoutBlockBox.cpp \
	source/Core/LayoutBlockBoxSpace.cpp \
	source/Core/LayoutEngine.cpp \
	source/Core/LayoutInlineBox.cpp \
	source/Core/LayoutInlineBoxText.cpp \
	source/Core/LayoutLineBox.cpp \
	source/Core/Log.cpp \
	source/Core/Math.cpp \
	source/Core/Plugin.cpp \
	source/Core/PluginRegistry.cpp \
	source/Core/precompiled.cpp \
	source/Core/Property.cpp \
	source/Core/PropertyDefinition.cpp \
	source/Core/PropertyDictionary.cpp \
	source/Core/PropertyParserColour.cpp \
	source/Core/PropertyParserKeyword.cpp \
	source/Core/PropertyParserNumber.cpp \
	source/Core/PropertyParserString.cpp \
	source/Core/PropertySpecification.cpp \
	source/Core/ReferenceCountable.cpp \
	source/Core/RenderInterface.cpp \
	source/Core/Stream.cpp \
	source/Core/StreamFile.cpp \
	source/Core/StreamMemory.cpp \
	source/Core/String.cpp \
	source/Core/StringCache.cpp \
	source/Core/StringStorage.cpp \
	source/Core/StringUtilities.cpp \
	source/Core/StyleSheet.cpp \
	source/Core/StyleSheetFactory.cpp \
	source/Core/StyleSheetNode.cpp \
	source/Core/StyleSheetNodeSelector.cpp \
	source/Core/StyleSheetNodeSelectorEmpty.cpp \
	source/Core/StyleSheetNodeSelectorFirstChild.cpp \
	source/Core/StyleSheetNodeSelectorFirstOfType.cpp \
	source/Core/StyleSheetNodeSelectorLastChild.cpp \
	source/Core/StyleSheetNodeSelectorLastOfType.cpp \
	source/Core/StyleSheetNodeSelectorNthChild.cpp \
	source/Core/StyleSheetNodeSelectorNthLastChild.cpp \
	source/Core/StyleSheetNodeSelectorNthLastOfType.cpp \
	source/Core/StyleSheetNodeSelectorNthOfType.cpp \
	source/Core/StyleSheetNodeSelectorOnlyChild.cpp \
	source/Core/StyleSheetNodeSelectorOnlyOfType.cpp \
	source/Core/StyleSheetParser.cpp \
	source/Core/StyleSheetSpecification.cpp \
	source/Core/SystemInterface.cpp \
	source/Core/Template.cpp \
	source/Core/TemplateCache.cpp \
	source/Core/Texture.cpp \
	source/Core/TextureDatabase.cpp \
	source/Core/TextureLayout.cpp \
	source/Core/TextureLayoutRectangle.cpp \
	source/Core/TextureLayoutRow.cpp \
	source/Core/TextureLayoutTexture.cpp \
	source/Core/TextureResource.cpp \
	source/Core/UnicodeRange.cpp \
	source/Core/URL.cpp \
	source/Core/Variant.cpp \
	source/Core/Vector2.cpp \
	source/Core/WidgetSlider.cpp \
	source/Core/WidgetSliderScroll.cpp \
	source/Core/WString.cpp \
	source/Core/XMLNodeHandler.cpp \
	source/Core/XMLNodeHandlerBody.cpp \
	source/Core/XMLNodeHandlerDefault.cpp \
	source/Core/XMLNodeHandlerHead.cpp \
	source/Core/XMLNodeHandlerTemplate.cpp \
	source/Core/XMLParser.cpp \
	source/Core/XMLParseTools.cpp


#LOCAL_EXPORT_C_INCLUDES := ./../freetype/include ./../freetype/include/freetype2 ./include

# LOCAL_C_INCLUDES := ./../freetype/include ./../freetype/include/freetype2 ./include
LOCAL_CFLAGS := -I$(LOCAL_PATH)/include -I$(LOCAL_PATH)/include


include $(BUILD_STATIC_LIBRARY)


