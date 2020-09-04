.class public Lcom/oneplus/lib/preference/Preference;
.super Ljava/lang/Object;
.source "Preference.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/lib/preference/Preference$BaseSavedState;,
        Lcom/oneplus/lib/preference/Preference$OnPreferenceChangeInternalListener;,
        Lcom/oneplus/lib/preference/Preference$OnPreferenceClickListener;,
        Lcom/oneplus/lib/preference/Preference$OnPreferenceChangeListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lcom/oneplus/lib/preference/Preference;",
        ">;"
    }
.end annotation


# instance fields
.field private mCanRecycleLayout:Z

.field private mContext:Landroid/content/Context;

.field private mDefaultValue:Ljava/lang/Object;

.field private mDependencyKey:Ljava/lang/String;

.field private mDependencyMet:Z

.field private mDependents:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/oneplus/lib/preference/Preference;",
            ">;"
        }
    .end annotation
.end field

.field private mEnabled:Z

.field private mFragment:Ljava/lang/String;

.field private mIcon:Landroid/graphics/drawable/Drawable;

.field private mIconResId:I

.field private mId:J

.field private mImageFrame:Landroid/view/View;

.field private mIntent:Landroid/content/Intent;

.field private mIsAvatarIcon:Z

.field private mKey:Ljava/lang/String;

.field private mLayoutResId:I

.field private mListener:Lcom/oneplus/lib/preference/Preference$OnPreferenceChangeInternalListener;

.field private mOnChangeListener:Lcom/oneplus/lib/preference/Preference$OnPreferenceChangeListener;

.field private mOnClickListener:Lcom/oneplus/lib/preference/Preference$OnPreferenceClickListener;

.field private mOrder:I

.field private mParentDependencyMet:Z

.field private mPersistent:Z

.field private mPreferenceManager:Lcom/oneplus/lib/preference/PreferenceManager;

.field private mSecondaryIcon:Landroid/graphics/drawable/Drawable;

.field private mSecondaryIconResId:I

.field private mSelectable:Z

.field private mShouldDisableView:Z

.field private mSummary:Ljava/lang/CharSequence;

.field private mSummaryOff:Ljava/lang/CharSequence;

.field private mSummaryOn:Ljava/lang/CharSequence;

.field private mTitle:Ljava/lang/CharSequence;

.field private mTitleRes:I

.field private mWidgetFrame:Landroid/view/ViewGroup;

.field private mWidgetLayoutResId:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 312
    sget v0, Lcom/oneplus/commonctrl/R$attr;->op_preferenceStyle:I

    invoke-direct {p0, p1, p2, v0}, Lcom/oneplus/lib/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    .line 294
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/oneplus/lib/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 2

    .line 224
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0x7fffffff

    .line 101
    iput v0, p0, Lcom/oneplus/lib/preference/Preference;->mOrder:I

    const/4 v0, 0x1

    .line 122
    iput-boolean v0, p0, Lcom/oneplus/lib/preference/Preference;->mEnabled:Z

    .line 123
    iput-boolean v0, p0, Lcom/oneplus/lib/preference/Preference;->mSelectable:Z

    .line 125
    iput-boolean v0, p0, Lcom/oneplus/lib/preference/Preference;->mPersistent:Z

    .line 128
    iput-boolean v0, p0, Lcom/oneplus/lib/preference/Preference;->mDependencyMet:Z

    .line 129
    iput-boolean v0, p0, Lcom/oneplus/lib/preference/Preference;->mParentDependencyMet:Z

    .line 134
    iput-boolean v0, p0, Lcom/oneplus/lib/preference/Preference;->mShouldDisableView:Z

    .line 136
    sget v1, Lcom/oneplus/commonctrl/R$layout;->op_preference:I

    iput v1, p0, Lcom/oneplus/lib/preference/Preference;->mLayoutResId:I

    .line 138
    iput-boolean v0, p0, Lcom/oneplus/lib/preference/Preference;->mCanRecycleLayout:Z

    .line 225
    iput-object p1, p0, Lcom/oneplus/lib/preference/Preference;->mContext:Landroid/content/Context;

    .line 227
    sget-object v1, Lcom/oneplus/commonctrl/R$styleable;->Preference:[I

    invoke-virtual {p1, p2, v1, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 230
    sget p2, Lcom/oneplus/commonctrl/R$styleable;->Preference_opUseAvatarIcon:I

    const/4 p3, 0x0

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lcom/oneplus/lib/preference/Preference;->mIsAvatarIcon:Z

    .line 231
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "mIsAvatarIcon = "

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p4, p0, Lcom/oneplus/lib/preference/Preference;->mIsAvatarIcon:Z

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p4, "Preference"

    invoke-static {p4, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 233
    sget p2, Lcom/oneplus/commonctrl/R$styleable;->Preference_android_icon:I

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    iput p2, p0, Lcom/oneplus/lib/preference/Preference;->mIconResId:I

    .line 235
    sget p2, Lcom/oneplus/commonctrl/R$styleable;->Preference_android_key:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/oneplus/lib/preference/Preference;->mKey:Ljava/lang/String;

    .line 237
    sget p2, Lcom/oneplus/commonctrl/R$styleable;->Preference_android_title:I

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    iput p2, p0, Lcom/oneplus/lib/preference/Preference;->mTitleRes:I

    .line 238
    sget p2, Lcom/oneplus/commonctrl/R$styleable;->Preference_android_title:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/oneplus/lib/preference/Preference;->mTitle:Ljava/lang/CharSequence;

    .line 240
    sget p2, Lcom/oneplus/commonctrl/R$styleable;->Preference_android_summary:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/oneplus/lib/preference/Preference;->mSummary:Ljava/lang/CharSequence;

    .line 242
    sget p2, Lcom/oneplus/commonctrl/R$styleable;->Preference_android_order:I

    iget p3, p0, Lcom/oneplus/lib/preference/Preference;->mOrder:I

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    iput p2, p0, Lcom/oneplus/lib/preference/Preference;->mOrder:I

    .line 244
    sget p2, Lcom/oneplus/commonctrl/R$styleable;->Preference_android_fragment:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/oneplus/lib/preference/Preference;->mFragment:Ljava/lang/String;

    .line 246
    sget p2, Lcom/oneplus/commonctrl/R$styleable;->Preference_android_layout:I

    iget p3, p0, Lcom/oneplus/lib/preference/Preference;->mLayoutResId:I

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    iput p2, p0, Lcom/oneplus/lib/preference/Preference;->mLayoutResId:I

    .line 248
    sget p2, Lcom/oneplus/commonctrl/R$styleable;->Preference_android_widgetLayout:I

    iget p3, p0, Lcom/oneplus/lib/preference/Preference;->mWidgetLayoutResId:I

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    iput p2, p0, Lcom/oneplus/lib/preference/Preference;->mWidgetLayoutResId:I

    .line 250
    sget p2, Lcom/oneplus/commonctrl/R$styleable;->Preference_android_enabled:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lcom/oneplus/lib/preference/Preference;->mEnabled:Z

    .line 252
    sget p2, Lcom/oneplus/commonctrl/R$styleable;->Preference_android_selectable:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lcom/oneplus/lib/preference/Preference;->mSelectable:Z

    .line 254
    sget p2, Lcom/oneplus/commonctrl/R$styleable;->Preference_android_persistent:I

    iget-boolean p3, p0, Lcom/oneplus/lib/preference/Preference;->mPersistent:Z

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lcom/oneplus/lib/preference/Preference;->mPersistent:Z

    .line 256
    sget p2, Lcom/oneplus/commonctrl/R$styleable;->Preference_android_dependency:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/oneplus/lib/preference/Preference;->mDependencyKey:Ljava/lang/String;

    .line 258
    sget p2, Lcom/oneplus/commonctrl/R$styleable;->Preference_android_defaultValue:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 259
    sget p2, Lcom/oneplus/commonctrl/R$styleable;->Preference_android_defaultValue:I

    invoke-virtual {p0, p1, p2}, Lcom/oneplus/lib/preference/Preference;->onGetDefaultValue(Landroid/content/res/TypedArray;I)Ljava/lang/Object;

    move-result-object p2

    iput-object p2, p0, Lcom/oneplus/lib/preference/Preference;->mDefaultValue:Ljava/lang/Object;

    .line 262
    :cond_0
    sget p2, Lcom/oneplus/commonctrl/R$styleable;->Preference_android_shouldDisableView:I

    iget-boolean p3, p0, Lcom/oneplus/lib/preference/Preference;->mShouldDisableView:Z

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lcom/oneplus/lib/preference/Preference;->mShouldDisableView:Z

    .line 264
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method private doUpdateImageFrameParams()V
    .locals 5

    .line 773
    iget-object v0, p0, Lcom/oneplus/lib/preference/Preference;->mImageFrame:Landroid/view/View;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_3

    .line 774
    iget-object v0, p0, Lcom/oneplus/lib/preference/Preference;->mImageFrame:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    if-eqz v0, :cond_3

    .line 776
    iget-boolean v1, p0, Lcom/oneplus/lib/preference/Preference;->mIsAvatarIcon:Z

    const/16 v2, 0x10

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    .line 777
    iget-object v1, p0, Lcom/oneplus/lib/preference/Preference;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v4, Lcom/oneplus/commonctrl/R$dimen;->oneplus_contorl_avatar_mini:I

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 778
    iget v1, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 781
    iget-object v1, p0, Lcom/oneplus/lib/preference/Preference;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v4, Lcom/oneplus/commonctrl/R$dimen;->oneplus_contorl_margin_avatar_left2:I

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout$LayoutParams;->setMarginStart(I)V

    .line 782
    iget-object v1, p0, Lcom/oneplus/lib/preference/Preference;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v4, Lcom/oneplus/commonctrl/R$dimen;->oneplus_contorl_margin_avatar_right3:I

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout$LayoutParams;->setMarginEnd(I)V

    .line 783
    invoke-direct {p0}, Lcom/oneplus/lib/preference/Preference;->isSummaryEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 784
    iput v3, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 785
    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    goto :goto_0

    .line 787
    :cond_0
    iget-object v1, p0, Lcom/oneplus/lib/preference/Preference;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/oneplus/commonctrl/R$dimen;->oneplus_contorl_margin_avatar_top3:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    goto :goto_0

    .line 790
    :cond_1
    invoke-direct {p0}, Lcom/oneplus/lib/preference/Preference;->isSummaryEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 791
    iput v3, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 792
    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    goto :goto_0

    .line 794
    :cond_2
    iget-object v1, p0, Lcom/oneplus/lib/preference/Preference;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/oneplus/commonctrl/R$dimen;->oneplus_contorl_margin_top4:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 798
    :goto_0
    iget-object p0, p0, Lcom/oneplus/lib/preference/Preference;->mImageFrame:Landroid/view/View;

    invoke-virtual {p0, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_3
    return-void
.end method

.method private isSummaryEmpty()Z
    .locals 1

    .line 878
    iget-object v0, p0, Lcom/oneplus/lib/preference/Preference;->mSummary:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/lib/preference/Preference;->mSummaryOn:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/oneplus/lib/preference/Preference;->mSummaryOff:Ljava/lang/CharSequence;

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private registerDependency()V
    .locals 3

    .line 1334
    iget-object v0, p0, Lcom/oneplus/lib/preference/Preference;->mDependencyKey:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 1336
    :cond_0
    iget-object v0, p0, Lcom/oneplus/lib/preference/Preference;->mDependencyKey:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/oneplus/lib/preference/Preference;->findPreferenceInHierarchy(Ljava/lang/String;)Lcom/oneplus/lib/preference/Preference;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1338
    invoke-direct {v0, p0}, Lcom/oneplus/lib/preference/Preference;->registerDependent(Lcom/oneplus/lib/preference/Preference;)V

    return-void

    .line 1340
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Dependency \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/oneplus/lib/preference/Preference;->mDependencyKey:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\" not found for preference \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/oneplus/lib/preference/Preference;->mKey:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\" (title: \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/oneplus/lib/preference/Preference;->mTitle:Ljava/lang/CharSequence;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, "\""

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private registerDependent(Lcom/oneplus/lib/preference/Preference;)V
    .locals 1

    .line 1382
    iget-object v0, p0, Lcom/oneplus/lib/preference/Preference;->mDependents:Ljava/util/List;

    if-nez v0, :cond_0

    .line 1383
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oneplus/lib/preference/Preference;->mDependents:Ljava/util/List;

    .line 1386
    :cond_0
    iget-object v0, p0, Lcom/oneplus/lib/preference/Preference;->mDependents:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1388
    invoke-virtual {p0}, Lcom/oneplus/lib/preference/Preference;->shouldDisableDependents()Z

    move-result v0

    invoke-virtual {p1, p0, v0}, Lcom/oneplus/lib/preference/Preference;->onDependencyChanged(Lcom/oneplus/lib/preference/Preference;Z)V

    return-void
.end method

.method private setEnabledStateOnViews(Landroid/view/View;Z)V
    .locals 2

    .line 636
    invoke-virtual {p1, p2}, Landroid/view/View;->setEnabled(Z)V

    .line 638
    instance-of v0, p1, Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 639
    check-cast p1, Landroid/view/ViewGroup;

    .line 640
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    .line 641
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-direct {p0, v1, p2}, Lcom/oneplus/lib/preference/Preference;->setEnabledStateOnViews(Landroid/view/View;Z)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method protected callChangeListener(Ljava/lang/Object;)Z
    .locals 1

    .line 1074
    iget-object v0, p0, Lcom/oneplus/lib/preference/Preference;->mOnChangeListener:Lcom/oneplus/lib/preference/Preference$OnPreferenceChangeListener;

    if-nez v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    invoke-interface {v0, p0, p1}, Lcom/oneplus/lib/preference/Preference$OnPreferenceChangeListener;->onPreferenceChange(Lcom/oneplus/lib/preference/Preference;Ljava/lang/Object;)Z

    move-result p0

    :goto_0
    return p0
.end method

.method canRecycleLayout()Z
    .locals 0

    .line 1841
    iget-boolean p0, p0, Lcom/oneplus/lib/preference/Preference;->mCanRecycleLayout:Z

    return p0
.end method

.method public compareTo(Lcom/oneplus/lib/preference/Preference;)I
    .locals 2

    .line 1251
    iget v0, p0, Lcom/oneplus/lib/preference/Preference;->mOrder:I

    iget v1, p1, Lcom/oneplus/lib/preference/Preference;->mOrder:I

    if-eq v0, v1, :cond_0

    sub-int/2addr v0, v1

    return v0

    .line 1254
    :cond_0
    iget-object p0, p0, Lcom/oneplus/lib/preference/Preference;->mTitle:Ljava/lang/CharSequence;

    iget-object p1, p1, Lcom/oneplus/lib/preference/Preference;->mTitle:Ljava/lang/CharSequence;

    if-ne p0, p1, :cond_1

    const/4 p0, 0x0

    return p0

    :cond_1
    if-nez p0, :cond_2

    const/4 p0, 0x1

    return p0

    :cond_2
    if-nez p1, :cond_3

    const/4 p0, -0x1

    return p0

    .line 1263
    :cond_3
    invoke-static {p0, p1}, Lcom/oneplus/lib/preference/CharSequences;->compareToIgnoreCase(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)I

    move-result p0

    return p0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 83
    check-cast p1, Lcom/oneplus/lib/preference/Preference;

    invoke-virtual {p0, p1}, Lcom/oneplus/lib/preference/Preference;->compareTo(Lcom/oneplus/lib/preference/Preference;)I

    move-result p0

    return p0
.end method

.method protected findPreferenceInHierarchy(Ljava/lang/String;)Lcom/oneplus/lib/preference/Preference;
    .locals 2

    .line 1365
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    iget-object p0, p0, Lcom/oneplus/lib/preference/Preference;->mPreferenceManager:Lcom/oneplus/lib/preference/PreferenceManager;

    if-nez p0, :cond_0

    goto :goto_0

    .line 1369
    :cond_0
    invoke-virtual {p0, p1}, Lcom/oneplus/lib/preference/PreferenceManager;->findPreference(Ljava/lang/CharSequence;)Lcom/oneplus/lib/preference/Preference;

    throw v1

    :cond_1
    :goto_0
    return-object v1
.end method

.method public getContext()Landroid/content/Context;
    .locals 0

    .line 1171
    iget-object p0, p0, Lcom/oneplus/lib/preference/Preference;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method getFilterableStringBuilder()Ljava/lang/StringBuilder;
    .locals 4

    .line 1861
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1862
    invoke-virtual {p0}, Lcom/oneplus/lib/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    .line 1863
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const/16 v3, 0x20

    if-nez v2, :cond_0

    .line 1864
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1866
    :cond_0
    invoke-virtual {p0}, Lcom/oneplus/lib/preference/Preference;->getSummary()Ljava/lang/CharSequence;

    move-result-object p0

    .line 1867
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1868
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1870
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result p0

    if-lez p0, :cond_2

    .line 1872
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result p0

    add-int/lit8 p0, p0, -0x1

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->setLength(I)V

    :cond_2
    return-object v0
.end method

.method public getFragment()Ljava/lang/String;
    .locals 0

    .line 375
    iget-object p0, p0, Lcom/oneplus/lib/preference/Preference;->mFragment:Ljava/lang/String;

    return-object p0
.end method

.method getId()J
    .locals 2

    .line 971
    iget-wide v0, p0, Lcom/oneplus/lib/preference/Preference;->mId:J

    return-wide v0
.end method

.method public getIntent()Landroid/content/Intent;
    .locals 0

    .line 357
    iget-object p0, p0, Lcom/oneplus/lib/preference/Preference;->mIntent:Landroid/content/Intent;

    return-object p0
.end method

.method public getLayoutResource()I
    .locals 0

    .line 427
    iget p0, p0, Lcom/oneplus/lib/preference/Preference;->mLayoutResId:I

    return p0
.end method

.method protected getPersistedBoolean(Z)Z
    .locals 1

    .line 1833
    invoke-virtual {p0}, Lcom/oneplus/lib/preference/Preference;->shouldPersist()Z

    move-result v0

    if-nez v0, :cond_0

    return p1

    .line 1837
    :cond_0
    iget-object p0, p0, Lcom/oneplus/lib/preference/Preference;->mPreferenceManager:Lcom/oneplus/lib/preference/PreferenceManager;

    invoke-virtual {p0}, Lcom/oneplus/lib/preference/PreferenceManager;->getSharedPreferences()Landroid/content/SharedPreferences;

    const/4 p0, 0x0

    throw p0
.end method

.method protected getPersistedInt(I)I
    .locals 1

    .line 1701
    invoke-virtual {p0}, Lcom/oneplus/lib/preference/Preference;->shouldPersist()Z

    move-result v0

    if-nez v0, :cond_0

    return p1

    .line 1705
    :cond_0
    iget-object p0, p0, Lcom/oneplus/lib/preference/Preference;->mPreferenceManager:Lcom/oneplus/lib/preference/PreferenceManager;

    invoke-virtual {p0}, Lcom/oneplus/lib/preference/PreferenceManager;->getSharedPreferences()Landroid/content/SharedPreferences;

    const/4 p0, 0x0

    throw p0
.end method

.method protected getPersistedString(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1602
    invoke-virtual {p0}, Lcom/oneplus/lib/preference/Preference;->shouldPersist()Z

    move-result v0

    if-nez v0, :cond_0

    return-object p1

    .line 1606
    :cond_0
    iget-object p0, p0, Lcom/oneplus/lib/preference/Preference;->mPreferenceManager:Lcom/oneplus/lib/preference/PreferenceManager;

    invoke-virtual {p0}, Lcom/oneplus/lib/preference/PreferenceManager;->getSharedPreferences()Landroid/content/SharedPreferences;

    const/4 p0, 0x0

    throw p0
.end method

.method public getPreferenceManager()Lcom/oneplus/lib/preference/PreferenceManager;
    .locals 0

    .line 1303
    iget-object p0, p0, Lcom/oneplus/lib/preference/Preference;->mPreferenceManager:Lcom/oneplus/lib/preference/PreferenceManager;

    return-object p0
.end method

.method public getSummary()Ljava/lang/CharSequence;
    .locals 0

    .line 853
    iget-object p0, p0, Lcom/oneplus/lib/preference/Preference;->mSummary:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .locals 0

    .line 724
    iget-object p0, p0, Lcom/oneplus/lib/preference/Preference;->mTitle:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public getView(Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 0

    if-nez p1, :cond_0

    .line 472
    invoke-virtual {p0, p2}, Lcom/oneplus/lib/preference/Preference;->onCreateView(Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    .line 474
    :cond_0
    invoke-virtual {p0, p1}, Lcom/oneplus/lib/preference/Preference;->onBindView(Landroid/view/View;)V

    return-object p1
.end method

.method public getWidgetLayoutResource()I
    .locals 0

    .line 454
    iget p0, p0, Lcom/oneplus/lib/preference/Preference;->mWidgetLayoutResId:I

    return p0
.end method

.method public hasKey()Z
    .locals 0

    .line 1028
    iget-object p0, p0, Lcom/oneplus/lib/preference/Preference;->mKey:Ljava/lang/String;

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public isEnabled()Z
    .locals 1

    .line 915
    iget-boolean v0, p0, Lcom/oneplus/lib/preference/Preference;->mEnabled:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/oneplus/lib/preference/Preference;->mDependencyMet:Z

    if-eqz v0, :cond_0

    iget-boolean p0, p0, Lcom/oneplus/lib/preference/Preference;->mParentDependencyMet:Z

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isPersistent()Z
    .locals 0

    .line 1038
    iget-boolean p0, p0, Lcom/oneplus/lib/preference/Preference;->mPersistent:Z

    return p0
.end method

.method public isSelectable()Z
    .locals 0

    .line 936
    iget-boolean p0, p0, Lcom/oneplus/lib/preference/Preference;->mSelectable:Z

    return p0
.end method

.method protected notifyChanged()V
    .locals 1

    .line 1281
    iget-object v0, p0, Lcom/oneplus/lib/preference/Preference;->mListener:Lcom/oneplus/lib/preference/Preference$OnPreferenceChangeInternalListener;

    if-eqz v0, :cond_0

    .line 1282
    invoke-interface {v0, p0}, Lcom/oneplus/lib/preference/Preference$OnPreferenceChangeInternalListener;->onPreferenceChange(Lcom/oneplus/lib/preference/Preference;)V

    :cond_0
    return-void
.end method

.method public notifyDependencyChange(Z)V
    .locals 4

    .line 1413
    iget-object v0, p0, Lcom/oneplus/lib/preference/Preference;->mDependents:Ljava/util/List;

    if-nez v0, :cond_0

    return-void

    .line 1419
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    .line 1421
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/oneplus/lib/preference/Preference;

    invoke-virtual {v3, p0, p1}, Lcom/oneplus/lib/preference/Preference;->onDependencyChanged(Lcom/oneplus/lib/preference/Preference;Z)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method protected onAttachedToActivity()V
    .locals 0

    .line 1329
    invoke-direct {p0}, Lcom/oneplus/lib/preference/Preference;->registerDependency()V

    return-void
.end method

.method protected onBindView(Landroid/view/View;)V
    .locals 6

    const v0, 0x1020016

    .line 530
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const/4 v1, 0x0

    const/16 v2, 0x8

    if-eqz v0, :cond_1

    .line 532
    invoke-virtual {p0}, Lcom/oneplus/lib/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v3

    .line 533
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 534
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 535
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 537
    :cond_0
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_1
    :goto_0
    const v0, 0x1020010

    .line 541
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-eqz v0, :cond_3

    .line 544
    invoke-virtual {p0}, Lcom/oneplus/lib/preference/Preference;->getSummary()Ljava/lang/CharSequence;

    move-result-object v3

    .line 545
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 546
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 547
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    .line 549
    :cond_2
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_3
    :goto_1
    const v0, 0x1020006

    .line 553
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    if-eqz v0, :cond_8

    .line 555
    iget v3, p0, Lcom/oneplus/lib/preference/Preference;->mIconResId:I

    if-nez v3, :cond_4

    iget-object v3, p0, Lcom/oneplus/lib/preference/Preference;->mIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_6

    .line 556
    :cond_4
    iget-object v3, p0, Lcom/oneplus/lib/preference/Preference;->mIcon:Landroid/graphics/drawable/Drawable;

    if-nez v3, :cond_5

    .line 557
    invoke-virtual {p0}, Lcom/oneplus/lib/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v3

    iget v4, p0, Lcom/oneplus/lib/preference/Preference;->mIconResId:I

    invoke-virtual {v3, v4}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, p0, Lcom/oneplus/lib/preference/Preference;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 559
    :cond_5
    iget-object v3, p0, Lcom/oneplus/lib/preference/Preference;->mIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_6

    .line 560
    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 563
    :cond_6
    iget-object v3, p0, Lcom/oneplus/lib/preference/Preference;->mIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_7

    move v3, v1

    goto :goto_2

    :cond_7
    move v3, v2

    :goto_2
    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 566
    :cond_8
    sget v0, Lcom/oneplus/commonctrl/R$id;->icon_frame:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/lib/preference/Preference;->mImageFrame:Landroid/view/View;

    .line 567
    iget-object v0, p0, Lcom/oneplus/lib/preference/Preference;->mImageFrame:Landroid/view/View;

    if-eqz v0, :cond_a

    .line 568
    iget-object v3, p0, Lcom/oneplus/lib/preference/Preference;->mIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_9

    move v3, v1

    goto :goto_3

    :cond_9
    move v3, v2

    :goto_3
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 571
    :cond_a
    invoke-direct {p0}, Lcom/oneplus/lib/preference/Preference;->doUpdateImageFrameParams()V

    .line 572
    sget v0, Lcom/oneplus/commonctrl/R$id;->text_layout:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_e

    .line 574
    sget v3, Lcom/oneplus/commonctrl/R$id;->top_space:I

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 575
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout$LayoutParams;

    if-eqz v0, :cond_e

    if-eqz v4, :cond_e

    .line 577
    iget-object v5, p0, Lcom/oneplus/lib/preference/Preference;->mImageFrame:Landroid/view/View;

    if-eqz v5, :cond_b

    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    move-result v5

    if-eq v5, v2, :cond_b

    .line 579
    invoke-virtual {v4, v1}, Landroid/widget/LinearLayout$LayoutParams;->setMarginStart(I)V

    .line 581
    :cond_b
    invoke-direct {p0}, Lcom/oneplus/lib/preference/Preference;->isSummaryEmpty()Z

    move-result v5

    if-nez v5, :cond_c

    if-eqz v3, :cond_e

    .line 583
    invoke-virtual {v3, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_4

    :cond_c
    const/16 v5, 0x10

    .line 603
    iput v5, v4, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    const/4 v5, -0x2

    .line 604
    iput v5, v4, Landroid/widget/LinearLayout$LayoutParams;->height:I

    if-eqz v3, :cond_d

    .line 606
    invoke-virtual {v3, v2}, Landroid/view/View;->setVisibility(I)V

    .line 608
    :cond_d
    invoke-virtual {v0, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 613
    :cond_e
    :goto_4
    sget v0, Lcom/oneplus/commonctrl/R$id;->secondary_icon:I

    .line 614
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    if-eqz v0, :cond_13

    .line 616
    iget v3, p0, Lcom/oneplus/lib/preference/Preference;->mSecondaryIconResId:I

    if-nez v3, :cond_f

    iget-object v3, p0, Lcom/oneplus/lib/preference/Preference;->mSecondaryIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_11

    .line 617
    :cond_f
    iget-object v3, p0, Lcom/oneplus/lib/preference/Preference;->mSecondaryIcon:Landroid/graphics/drawable/Drawable;

    if-nez v3, :cond_10

    .line 618
    invoke-virtual {p0}, Lcom/oneplus/lib/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v3

    iget v4, p0, Lcom/oneplus/lib/preference/Preference;->mSecondaryIconResId:I

    invoke-virtual {v3, v4}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, p0, Lcom/oneplus/lib/preference/Preference;->mSecondaryIcon:Landroid/graphics/drawable/Drawable;

    .line 620
    :cond_10
    iget-object v3, p0, Lcom/oneplus/lib/preference/Preference;->mSecondaryIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_11

    .line 621
    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 624
    :cond_11
    iget-object v3, p0, Lcom/oneplus/lib/preference/Preference;->mSecondaryIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_12

    goto :goto_5

    :cond_12
    move v1, v2

    :goto_5
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 627
    :cond_13
    iget-boolean v0, p0, Lcom/oneplus/lib/preference/Preference;->mShouldDisableView:Z

    if-eqz v0, :cond_14

    .line 628
    invoke-virtual {p0}, Lcom/oneplus/lib/preference/Preference;->isEnabled()Z

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/oneplus/lib/preference/Preference;->setEnabledStateOnViews(Landroid/view/View;Z)V

    :cond_14
    return-void
.end method

.method protected onClick()V
    .locals 0

    return-void
.end method

.method protected onCreateView(Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5

    .line 492
    iget-object v0, p0, Lcom/oneplus/lib/preference/Preference;->mContext:Landroid/content/Context;

    const-string v1, "layout_inflater"

    .line 493
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 495
    iget v1, p0, Lcom/oneplus/lib/preference/Preference;->mLayoutResId:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const v1, 0x1020018

    .line 498
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/oneplus/lib/preference/Preference;->mWidgetFrame:Landroid/view/ViewGroup;

    .line 499
    iget-object v1, p0, Lcom/oneplus/lib/preference/Preference;->mWidgetFrame:Landroid/view/ViewGroup;

    if-eqz v1, :cond_1

    .line 500
    iget v3, p0, Lcom/oneplus/lib/preference/Preference;->mWidgetLayoutResId:I

    const/16 v4, 0x8

    if-eqz v3, :cond_0

    .line 501
    invoke-virtual {v0, v3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    goto :goto_0

    .line 503
    :cond_0
    invoke-virtual {v1, v4}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 506
    :goto_0
    invoke-direct {p0}, Lcom/oneplus/lib/preference/Preference;->isSummaryEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/oneplus/lib/preference/Preference;->mWidgetFrame:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v0

    if-eq v0, v4, :cond_1

    .line 507
    iget-object v0, p0, Lcom/oneplus/lib/preference/Preference;->mWidgetFrame:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    if-eqz v0, :cond_1

    .line 509
    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    const/16 v1, 0x10

    .line 510
    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 511
    iget-object p0, p0, Lcom/oneplus/lib/preference/Preference;->mWidgetFrame:Landroid/view/ViewGroup;

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_1
    return-object p1
.end method

.method public onDependencyChanged(Lcom/oneplus/lib/preference/Preference;Z)V
    .locals 0

    .line 1432
    iget-boolean p1, p0, Lcom/oneplus/lib/preference/Preference;->mDependencyMet:Z

    if-ne p1, p2, :cond_0

    xor-int/lit8 p1, p2, 0x1

    .line 1433
    iput-boolean p1, p0, Lcom/oneplus/lib/preference/Preference;->mDependencyMet:Z

    .line 1436
    invoke-virtual {p0}, Lcom/oneplus/lib/preference/Preference;->shouldDisableDependents()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/oneplus/lib/preference/Preference;->notifyDependencyChange(Z)V

    .line 1438
    invoke-virtual {p0}, Lcom/oneplus/lib/preference/Preference;->notifyChanged()V

    :cond_0
    return-void
.end method

.method protected onGetDefaultValue(Landroid/content/res/TypedArray;I)Ljava/lang/Object;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public onParentChanged(Lcom/oneplus/lib/preference/Preference;Z)V
    .locals 0

    .line 1449
    iget-boolean p1, p0, Lcom/oneplus/lib/preference/Preference;->mParentDependencyMet:Z

    if-ne p1, p2, :cond_0

    xor-int/lit8 p1, p2, 0x1

    .line 1450
    iput-boolean p1, p0, Lcom/oneplus/lib/preference/Preference;->mParentDependencyMet:Z

    .line 1453
    invoke-virtual {p0}, Lcom/oneplus/lib/preference/Preference;->shouldDisableDependents()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/oneplus/lib/preference/Preference;->notifyDependencyChange(Z)V

    .line 1455
    invoke-virtual {p0}, Lcom/oneplus/lib/preference/Preference;->notifyChanged()V

    :cond_0
    return-void
.end method

.method public performClick(Lcom/oneplus/lib/preference/PreferenceScreen;)V
    .locals 0

    .line 1125
    invoke-virtual {p0}, Lcom/oneplus/lib/preference/Preference;->isEnabled()Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 1129
    :cond_0
    invoke-virtual {p0}, Lcom/oneplus/lib/preference/Preference;->onClick()V

    .line 1131
    iget-object p1, p0, Lcom/oneplus/lib/preference/Preference;->mOnClickListener:Lcom/oneplus/lib/preference/Preference$OnPreferenceClickListener;

    if-eqz p1, :cond_1

    invoke-interface {p1, p0}, Lcom/oneplus/lib/preference/Preference$OnPreferenceClickListener;->onPreferenceClick(Lcom/oneplus/lib/preference/Preference;)Z

    move-result p1

    if-eqz p1, :cond_1

    return-void

    .line 1135
    :cond_1
    invoke-virtual {p0}, Lcom/oneplus/lib/preference/Preference;->getPreferenceManager()Lcom/oneplus/lib/preference/PreferenceManager;

    move-result-object p1

    if-nez p1, :cond_3

    .line 1145
    iget-object p1, p0, Lcom/oneplus/lib/preference/Preference;->mIntent:Landroid/content/Intent;

    if-eqz p1, :cond_2

    .line 1146
    invoke-virtual {p0}, Lcom/oneplus/lib/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object p1

    .line 1147
    iget-object p0, p0, Lcom/oneplus/lib/preference/Preference;->mIntent:Landroid/content/Intent;

    invoke-virtual {p1, p0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :cond_2
    return-void

    .line 1138
    :cond_3
    invoke-virtual {p1}, Lcom/oneplus/lib/preference/PreferenceManager;->getOnPreferenceTreeClickListener()Lcom/oneplus/lib/preference/PreferenceManager$OnPreferenceTreeClickListener;

    const/4 p0, 0x0

    throw p0
.end method

.method protected persistBoolean(Z)Z
    .locals 1

    .line 1807
    invoke-virtual {p0}, Lcom/oneplus/lib/preference/Preference;->shouldPersist()Z

    move-result v0

    if-eqz v0, :cond_1

    xor-int/lit8 v0, p1, 0x1

    .line 1808
    invoke-virtual {p0, v0}, Lcom/oneplus/lib/preference/Preference;->getPersistedBoolean(Z)Z

    move-result v0

    if-ne p1, v0, :cond_0

    const/4 p0, 0x1

    return p0

    .line 1813
    :cond_0
    iget-object p0, p0, Lcom/oneplus/lib/preference/Preference;->mPreferenceManager:Lcom/oneplus/lib/preference/PreferenceManager;

    invoke-virtual {p0}, Lcom/oneplus/lib/preference/PreferenceManager;->getEditor()Landroid/content/SharedPreferences$Editor;

    const/4 p0, 0x0

    throw p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method protected persistInt(I)Z
    .locals 1

    .line 1675
    invoke-virtual {p0}, Lcom/oneplus/lib/preference/Preference;->shouldPersist()Z

    move-result v0

    if-eqz v0, :cond_1

    not-int v0, p1

    .line 1676
    invoke-virtual {p0, v0}, Lcom/oneplus/lib/preference/Preference;->getPersistedInt(I)I

    move-result v0

    if-ne p1, v0, :cond_0

    const/4 p0, 0x1

    return p0

    .line 1681
    :cond_0
    iget-object p0, p0, Lcom/oneplus/lib/preference/Preference;->mPreferenceManager:Lcom/oneplus/lib/preference/PreferenceManager;

    invoke-virtual {p0}, Lcom/oneplus/lib/preference/PreferenceManager;->getEditor()Landroid/content/SharedPreferences$Editor;

    const/4 p0, 0x0

    throw p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public setLayoutResource(I)V
    .locals 1

    .line 413
    iget v0, p0, Lcom/oneplus/lib/preference/Preference;->mLayoutResId:I

    if-eq p1, v0, :cond_0

    const/4 v0, 0x0

    .line 415
    iput-boolean v0, p0, Lcom/oneplus/lib/preference/Preference;->mCanRecycleLayout:Z

    .line 418
    :cond_0
    iput p1, p0, Lcom/oneplus/lib/preference/Preference;->mLayoutResId:I

    return-void
.end method

.method final setOnPreferenceChangeInternalListener(Lcom/oneplus/lib/preference/Preference$OnPreferenceChangeInternalListener;)V
    .locals 0

    .line 1274
    iput-object p1, p0, Lcom/oneplus/lib/preference/Preference;->mListener:Lcom/oneplus/lib/preference/Preference$OnPreferenceChangeInternalListener;

    return-void
.end method

.method protected setSummaryOffFromTwoState(Ljava/lang/CharSequence;)V
    .locals 0

    .line 874
    iput-object p1, p0, Lcom/oneplus/lib/preference/Preference;->mSummaryOff:Ljava/lang/CharSequence;

    return-void
.end method

.method protected setSummaryOnFromTwoState(Ljava/lang/CharSequence;)V
    .locals 0

    .line 870
    iput-object p1, p0, Lcom/oneplus/lib/preference/Preference;->mSummaryOn:Ljava/lang/CharSequence;

    return-void
.end method

.method public shouldDisableDependents()Z
    .locals 0

    .line 1466
    invoke-virtual {p0}, Lcom/oneplus/lib/preference/Preference;->isEnabled()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method protected shouldPersist()Z
    .locals 1

    .line 1051
    iget-object v0, p0, Lcom/oneplus/lib/preference/Preference;->mPreferenceManager:Lcom/oneplus/lib/preference/PreferenceManager;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/oneplus/lib/preference/Preference;->isPersistent()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/oneplus/lib/preference/Preference;->hasKey()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 0

    .line 1846
    invoke-virtual {p0}, Lcom/oneplus/lib/preference/Preference;->getFilterableStringBuilder()Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
