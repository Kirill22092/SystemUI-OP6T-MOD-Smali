.class public Lcom/android/settingslib/widget/RadioButtonPreference;
.super Landroidx/preference/CheckBoxPreference;
.source "RadioButtonPreference.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settingslib/widget/RadioButtonPreference$OnClickListener;
    }
.end annotation


# instance fields
.field private mAppendix:Landroid/view/View;

.field private mAppendixVisibility:I

.field private mListener:Lcom/android/settingslib/widget/RadioButtonPreference$OnClickListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroidx/preference/CheckBoxPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/settingslib/widget/RadioButtonPreference;->mListener:Lcom/android/settingslib/widget/RadioButtonPreference$OnClickListener;

    const/4 p1, -0x1

    iput p1, p0, Lcom/android/settingslib/widget/RadioButtonPreference;->mAppendixVisibility:I

    invoke-direct {p0}, Lcom/android/settingslib/widget/RadioButtonPreference;->init()V

    return-void
.end method

.method private init()V
    .locals 1

    sget v0, Lcom/android/settingslib/widget/R$layout;->preference_widget_radiobutton:I

    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setWidgetLayoutResource(I)V

    sget v0, Lcom/android/settingslib/widget/R$layout;->preference_radio:I

    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setLayoutResource(I)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setIconSpaceReserved(Z)V

    return-void
.end method


# virtual methods
.method public onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .locals 3

    invoke-super {p0, p1}, Landroidx/preference/CheckBoxPreference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    sget v0, Lcom/android/settingslib/widget/R$id;->summary_container:I

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroidx/preference/Preference;->getSummary()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v2, 0x8

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    sget v0, Lcom/android/settingslib/widget/R$id;->appendix:I

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settingslib/widget/RadioButtonPreference;->mAppendix:Landroid/view/View;

    if-eqz v0, :cond_1

    iget p0, p0, Lcom/android/settingslib/widget/RadioButtonPreference;->mAppendixVisibility:I

    const/4 v2, -0x1

    if-eq p0, v2, :cond_1

    invoke-virtual {v0, p0}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    const p0, 0x1020016

    invoke-virtual {p1, p0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    if-eqz p0, :cond_2

    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setSingleLine(Z)V

    const/4 p1, 0x3

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setMaxLines(I)V

    :cond_2
    return-void
.end method

.method public onClick()V
    .locals 1

    iget-object v0, p0, Lcom/android/settingslib/widget/RadioButtonPreference;->mListener:Lcom/android/settingslib/widget/RadioButtonPreference$OnClickListener;

    if-eqz v0, :cond_0

    invoke-interface {v0, p0}, Lcom/android/settingslib/widget/RadioButtonPreference$OnClickListener;->onRadioButtonClicked(Lcom/android/settingslib/widget/RadioButtonPreference;)V

    :cond_0
    return-void
.end method
