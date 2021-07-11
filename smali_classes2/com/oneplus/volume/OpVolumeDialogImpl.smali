.class public Lcom/oneplus/volume/OpVolumeDialogImpl;
.super Ljava/lang/Object;
.source "OpVolumeDialogImpl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/volume/OpVolumeDialogImpl$VolumeRow;,
        Lcom/oneplus/volume/OpVolumeDialogImpl$OpHandler;,
        Lcom/oneplus/volume/OpVolumeDialogImpl$DeviceInfo;
    }
.end annotation


# instance fields
.field protected mAccentColor:I

.field protected mClickOutputChooser:Landroid/view/View$OnClickListener;

.field protected mConnectedDevice:Landroid/widget/TextView;

.field protected mContext:Landroid/content/Context;

.field protected mDeviceInfo:Lcom/oneplus/volume/OpVolumeDialogImpl$DeviceInfo;

.field protected mDialogLower:Landroid/view/ViewGroup;

.field protected mDialogRowContainer:Landroid/view/ViewGroup;

.field protected mDialogRowContainerBottom:Landroid/view/ViewGroup;

.field protected mDialogUpper:Landroid/view/ViewGroup;

.field protected mFirstTimeInitDialog:Z

.field protected mHandler:Lcom/oneplus/volume/OpVolumeDialogImpl$OpHandler;

.field protected mIsExpandAnimDone:Z

.field protected mODICaptionsView:Landroid/view/ViewGroup;

.field protected mODIViewHeight:I

.field protected mOpBeforeExpandWidth:I

.field protected mOpForceExpandState:Z

.field protected mOpLastforceExpandState:Z

.field protected mOpOutputChooser:Lcom/oneplus/volume/OpOutputChooser;

.field protected mOpafterExpandWidth:I

.field protected mOutputChooser:Landroid/widget/ImageButton;

.field protected mOutputChooserBackgroundView:Landroid/view/View;

.field protected mOutputChooserCallback:Lcom/oneplus/volume/OpOutputChooser$OutputChooserCallback;

.field protected mOutputChooserDialog:Lcom/oneplus/volume/OpOutputChooserDialog;

.field protected mOutputChooserExpandEditText:Landroid/widget/EditText;

.field protected mOutputChooserExpandIcon:Landroid/widget/ImageView;

.field protected mOutputChooserExpandTextView:Landroid/widget/TextView;

.field private final mOutputChooserLock:Ljava/lang/Object;

.field protected mPendingInit:Z

.field protected mRows:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/oneplus/volume/OpVolumeDialogImpl$VolumeRow;",
            ">;"
        }
    .end annotation
.end field

.field protected mThemeButtonBg:I

.field protected mThemeColorDialogBackground:I

.field protected mThemeColorDialogRowContainerBackground:I

.field protected mThemeColorIcon:I

.field protected mThemeColorMode:I

.field protected mThemeColorSeekbarBackgroundDrawable:I

.field protected mThemeColorText:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/oneplus/volume/OpVolumeDialogImpl;->mOutputChooserLock:Ljava/lang/Object;

    const/4 v0, 0x0

    .line 89
    iput v0, p0, Lcom/oneplus/volume/OpVolumeDialogImpl;->mThemeColorMode:I

    .line 90
    iput v0, p0, Lcom/oneplus/volume/OpVolumeDialogImpl;->mAccentColor:I

    .line 91
    iput v0, p0, Lcom/oneplus/volume/OpVolumeDialogImpl;->mThemeColorDialogBackground:I

    .line 92
    iput v0, p0, Lcom/oneplus/volume/OpVolumeDialogImpl;->mThemeColorDialogRowContainerBackground:I

    .line 93
    iput v0, p0, Lcom/oneplus/volume/OpVolumeDialogImpl;->mThemeColorText:I

    .line 94
    iput v0, p0, Lcom/oneplus/volume/OpVolumeDialogImpl;->mThemeColorIcon:I

    .line 96
    iput v0, p0, Lcom/oneplus/volume/OpVolumeDialogImpl;->mThemeColorSeekbarBackgroundDrawable:I

    .line 99
    iput v0, p0, Lcom/oneplus/volume/OpVolumeDialogImpl;->mThemeButtonBg:I

    .line 107
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/oneplus/volume/OpVolumeDialogImpl;->mRows:Ljava/util/List;

    const/4 v1, 0x1

    .line 116
    iput-boolean v1, p0, Lcom/oneplus/volume/OpVolumeDialogImpl;->mPendingInit:Z

    .line 120
    iput-boolean v1, p0, Lcom/oneplus/volume/OpVolumeDialogImpl;->mFirstTimeInitDialog:Z

    .line 121
    iput-boolean v0, p0, Lcom/oneplus/volume/OpVolumeDialogImpl;->mOpLastforceExpandState:Z

    .line 122
    iput-boolean v0, p0, Lcom/oneplus/volume/OpVolumeDialogImpl;->mOpForceExpandState:Z

    .line 123
    iput-boolean v1, p0, Lcom/oneplus/volume/OpVolumeDialogImpl;->mIsExpandAnimDone:Z

    .line 140
    iput v0, p0, Lcom/oneplus/volume/OpVolumeDialogImpl;->mODIViewHeight:I

    .line 159
    new-instance v0, Lcom/oneplus/volume/OpVolumeDialogImpl$OpHandler;

    invoke-direct {v0, p0}, Lcom/oneplus/volume/OpVolumeDialogImpl$OpHandler;-><init>(Lcom/oneplus/volume/OpVolumeDialogImpl;)V

    iput-object v0, p0, Lcom/oneplus/volume/OpVolumeDialogImpl;->mHandler:Lcom/oneplus/volume/OpVolumeDialogImpl$OpHandler;

    .line 177
    new-instance v0, Lcom/oneplus/volume/OpVolumeDialogImpl$1;

    invoke-direct {v0, p0}, Lcom/oneplus/volume/OpVolumeDialogImpl$1;-><init>(Lcom/oneplus/volume/OpVolumeDialogImpl;)V

    iput-object v0, p0, Lcom/oneplus/volume/OpVolumeDialogImpl;->mOutputChooserCallback:Lcom/oneplus/volume/OpOutputChooser$OutputChooserCallback;

    return-void
.end method

.method static synthetic access$000(Lcom/oneplus/volume/OpVolumeDialogImpl;I)V
    .locals 0

    .line 86
    invoke-direct {p0, p1}, Lcom/oneplus/volume/OpVolumeDialogImpl;->setDialogWidthH(I)V

    return-void
.end method

.method static synthetic access$100(Lcom/oneplus/volume/OpVolumeDialogImpl;)Ljava/lang/Object;
    .locals 0

    .line 86
    iget-object p0, p0, Lcom/oneplus/volume/OpVolumeDialogImpl;->mOutputChooserLock:Ljava/lang/Object;

    return-object p0
.end method

.method private applyColors()V
    .locals 3

    .line 758
    iget-object v0, p0, Lcom/oneplus/volume/OpVolumeDialogImpl;->mDialogUpper:Landroid/view/ViewGroup;

    iget v1, p0, Lcom/oneplus/volume/OpVolumeDialogImpl;->mThemeColorDialogBackground:I

    invoke-direct {p0, v1}, Lcom/oneplus/volume/OpVolumeDialogImpl;->getCornerGradientDrawable(I)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 759
    iget-object v0, p0, Lcom/oneplus/volume/OpVolumeDialogImpl;->mDialogLower:Landroid/view/ViewGroup;

    iget v1, p0, Lcom/oneplus/volume/OpVolumeDialogImpl;->mThemeColorDialogBackground:I

    invoke-direct {p0, v1}, Lcom/oneplus/volume/OpVolumeDialogImpl;->getCornerGradientDrawable(I)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 760
    iget-object v0, p0, Lcom/oneplus/volume/OpVolumeDialogImpl;->mDialogRowContainer:Landroid/view/ViewGroup;

    iget v1, p0, Lcom/oneplus/volume/OpVolumeDialogImpl;->mThemeColorDialogRowContainerBackground:I

    invoke-direct {p0, v1}, Lcom/oneplus/volume/OpVolumeDialogImpl;->getCornerGradientDrawable(I)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 761
    iget-object v0, p0, Lcom/oneplus/volume/OpVolumeDialogImpl;->mODICaptionsView:Landroid/view/ViewGroup;

    iget v1, p0, Lcom/oneplus/volume/OpVolumeDialogImpl;->mThemeColorDialogRowContainerBackground:I

    invoke-direct {p0, v1}, Lcom/oneplus/volume/OpVolumeDialogImpl;->getCornerGradientDrawable(I)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 766
    invoke-direct {p0}, Lcom/oneplus/volume/OpVolumeDialogImpl;->getSettingsIcon()Landroid/widget/ImageButton;

    move-result-object v0

    iget v1, p0, Lcom/oneplus/volume/OpVolumeDialogImpl;->mThemeColorIcon:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setColorFilter(I)V

    .line 767
    invoke-direct {p0}, Lcom/oneplus/volume/OpVolumeDialogImpl;->getSettingsBackIcon()Landroid/widget/ImageButton;

    move-result-object v0

    iget v1, p0, Lcom/oneplus/volume/OpVolumeDialogImpl;->mThemeColorIcon:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setColorFilter(I)V

    .line 768
    invoke-direct {p0}, Lcom/oneplus/volume/OpVolumeDialogImpl;->getSettingsOpSettingsIcon()Landroid/widget/ImageButton;

    move-result-object v0

    iget v1, p0, Lcom/oneplus/volume/OpVolumeDialogImpl;->mThemeColorIcon:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setColorFilter(I)V

    .line 770
    invoke-direct {p0}, Lcom/oneplus/volume/OpVolumeDialogImpl;->getODICaptionsIcon()Landroid/widget/ImageButton;

    move-result-object v0

    iget v1, p0, Lcom/oneplus/volume/OpVolumeDialogImpl;->mThemeColorIcon:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setColorFilter(I)V

    .line 775
    iget-object v0, p0, Lcom/oneplus/volume/OpVolumeDialogImpl;->mConnectedDevice:Landroid/widget/TextView;

    iget v1, p0, Lcom/oneplus/volume/OpVolumeDialogImpl;->mThemeColorText:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 776
    iget-object v0, p0, Lcom/oneplus/volume/OpVolumeDialogImpl;->mOutputChooser:Landroid/widget/ImageButton;

    iget v1, p0, Lcom/oneplus/volume/OpVolumeDialogImpl;->mAccentColor:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setColorFilter(I)V

    .line 777
    iget-object v0, p0, Lcom/oneplus/volume/OpVolumeDialogImpl;->mOutputChooser:Landroid/widget/ImageButton;

    iget v1, p0, Lcom/oneplus/volume/OpVolumeDialogImpl;->mThemeButtonBg:I

    invoke-static {v1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    .line 781
    iget-object v0, p0, Lcom/oneplus/volume/OpVolumeDialogImpl;->mOutputChooserBackgroundView:Landroid/view/View;

    iget v1, p0, Lcom/oneplus/volume/OpVolumeDialogImpl;->mThemeButtonBg:I

    invoke-static {v1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    .line 783
    iget-object v0, p0, Lcom/oneplus/volume/OpVolumeDialogImpl;->mOutputChooserExpandIcon:Landroid/widget/ImageView;

    iget v1, p0, Lcom/oneplus/volume/OpVolumeDialogImpl;->mThemeColorIcon:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 785
    iget-object v0, p0, Lcom/oneplus/volume/OpVolumeDialogImpl;->mOutputChooserExpandEditText:Landroid/widget/EditText;

    iget v1, p0, Lcom/oneplus/volume/OpVolumeDialogImpl;->mThemeColorIcon:I

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setTextColor(I)V

    .line 786
    iget-object v0, p0, Lcom/oneplus/volume/OpVolumeDialogImpl;->mOutputChooserExpandTextView:Landroid/widget/TextView;

    iget v1, p0, Lcom/oneplus/volume/OpVolumeDialogImpl;->mThemeColorIcon:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 789
    iget-object v0, p0, Lcom/oneplus/volume/OpVolumeDialogImpl;->mRows:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/volume/OpVolumeDialogImpl$VolumeRow;

    const/4 v2, 0x1

    .line 791
    invoke-direct {p0, v1, v2, v2}, Lcom/oneplus/volume/OpVolumeDialogImpl;->updateVolumeRowTintH(Lcom/oneplus/volume/OpVolumeDialogImpl$VolumeRow;ZZ)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private getCornerGradientDrawable(I)Landroid/graphics/drawable/GradientDrawable;
    .locals 1

    .line 799
    :try_start_0
    iget-object v0, p0, Lcom/oneplus/volume/OpVolumeDialogImpl;->mContext:Landroid/content/Context;

    .line 800
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    check-cast p1, Landroid/graphics/drawable/LayerDrawable;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/LayerDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    check-cast p1, Landroid/graphics/drawable/GradientDrawable;

    .line 801
    iget-object v0, p0, Lcom/oneplus/volume/OpVolumeDialogImpl;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/oneplus/volume/OpVolumeDialogImpl;->getVolCornerRadii(Landroid/content/Context;)[F

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadii([F)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p0

    .line 804
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "getCornerGradientDrawable Exception "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "OpVolumeDialogImpl"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0
.end method

.method private getDialog()Lcom/android/systemui/volume/VolumeDialogImpl$CustomDialog;
    .locals 2

    .line 838
    const-class v0, Lcom/android/systemui/volume/VolumeDialogImpl;

    const-string v1, "mDialog"

    invoke-static {v0, p0, v1}, Lcom/oneplus/util/OpReflectionUtils;->getValue(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/volume/VolumeDialogImpl$CustomDialog;

    return-object p0
.end method

.method private getDialogView()Landroid/view/ViewGroup;
    .locals 2

    .line 817
    const-class v0, Lcom/android/systemui/volume/VolumeDialogImpl;

    const-string v1, "mDialogView"

    invoke-static {v0, p0, v1}, Lcom/oneplus/util/OpReflectionUtils;->getValue(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/ViewGroup;

    return-object p0
.end method

.method private getODICaptionsIcon()Landroid/widget/ImageButton;
    .locals 2

    .line 884
    const-class v0, Lcom/android/systemui/volume/VolumeDialogImpl;

    const-string v1, "mODICaptionsIcon"

    invoke-static {v0, p0, v1}, Lcom/oneplus/util/OpReflectionUtils;->getValue(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/widget/ImageButton;

    return-object p0
.end method

.method private getSettingsBackIcon()Landroid/widget/ImageButton;
    .locals 2

    .line 859
    const-class v0, Lcom/android/systemui/volume/VolumeDialogImpl;

    const-string v1, "mSettingsBackIcon"

    invoke-static {v0, p0, v1}, Lcom/oneplus/util/OpReflectionUtils;->getValue(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/widget/ImageButton;

    return-object p0
.end method

.method private getSettingsBackView()Landroid/view/View;
    .locals 2

    .line 874
    const-class v0, Lcom/android/systemui/volume/VolumeDialogImpl;

    const-string v1, "mSettingsBackView"

    invoke-static {v0, p0, v1}, Lcom/oneplus/util/OpReflectionUtils;->getValue(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/View;

    return-object p0
.end method

.method private getSettingsIcon()Landroid/widget/ImageButton;
    .locals 2

    .line 854
    const-class v0, Lcom/android/systemui/volume/VolumeDialogImpl;

    const-string v1, "mSettingsIcon"

    invoke-static {v0, p0, v1}, Lcom/oneplus/util/OpReflectionUtils;->getValue(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/widget/ImageButton;

    return-object p0
.end method

.method private getSettingsOpSettingsIcon()Landroid/widget/ImageButton;
    .locals 2

    .line 864
    const-class v0, Lcom/android/systemui/volume/VolumeDialogImpl;

    const-string v1, "mSettingsOpSettingsIcon"

    invoke-static {v0, p0, v1}, Lcom/oneplus/util/OpReflectionUtils;->getValue(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/widget/ImageButton;

    return-object p0
.end method

.method private getSettingsOpSettingsView()Landroid/view/View;
    .locals 2

    .line 879
    const-class v0, Lcom/android/systemui/volume/VolumeDialogImpl;

    const-string v1, "mSettingsOpSettingsView"

    invoke-static {v0, p0, v1}, Lcom/oneplus/util/OpReflectionUtils;->getValue(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/View;

    return-object p0
.end method

.method private getSettingsView()Landroid/view/View;
    .locals 2

    .line 869
    const-class v0, Lcom/android/systemui/volume/VolumeDialogImpl;

    const-string v1, "mSettingsView"

    invoke-static {v0, p0, v1}, Lcom/oneplus/util/OpReflectionUtils;->getValue(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/View;

    return-object p0
.end method

.method private getVolCornerRadii(Landroid/content/Context;)[F
    .locals 1

    .line 810
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget p1, Lcom/android/systemui/R$dimen;->shape_corner_radius:I

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    int-to-float p0, p0

    .line 811
    sget-boolean p1, Lcom/oneplus/util/OpUtils;->DEBUG_ONEPLUS:Z

    if-eqz p1, :cond_0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "shape_corner_radius:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "OpVolumeDialogImpl"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/16 p1, 0x8

    new-array p1, p1, [F

    const/4 v0, 0x0

    aput p0, p1, v0

    const/4 v0, 0x1

    aput p0, p1, v0

    const/4 v0, 0x2

    aput p0, p1, v0

    const/4 v0, 0x3

    aput p0, p1, v0

    const/4 v0, 0x4

    aput p0, p1, v0

    const/4 v0, 0x5

    aput p0, p1, v0

    const/4 v0, 0x6

    aput p0, p1, v0

    const/4 v0, 0x7

    aput p0, p1, v0

    return-object p1
.end method

.method private initSettingsH()V
    .locals 3

    .line 890
    const-class v0, Lcom/android/systemui/volume/VolumeDialogImpl;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "initSettingsH"

    invoke-static {v0, p0, v2, v1}, Lcom/oneplus/util/OpReflectionUtils;->methodInvokeVoid(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private isAccentColorChanged(IZ)Z
    .locals 0

    const/16 p1, 0x64

    .line 627
    invoke-static {p1}, Lcom/oneplus/util/ThemeColorUtils;->getColor(I)I

    move-result p1

    .line 629
    iget p2, p0, Lcom/oneplus/volume/OpVolumeDialogImpl;->mAccentColor:I

    if-eq p2, p1, :cond_0

    .line 630
    iput p1, p0, Lcom/oneplus/volume/OpVolumeDialogImpl;->mAccentColor:I

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private isLandscape()Z
    .locals 1

    .line 333
    iget-object p0, p0, Lcom/oneplus/volume/OpVolumeDialogImpl;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    iget p0, p0, Landroid/content/res/Configuration;->orientation:I

    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method static synthetic lambda$setViewVisibleGoneFadeInOutAndScaleAnim$0(ZLandroid/view/View;)V
    .locals 0

    if-nez p0, :cond_0

    const/16 p0, 0x8

    .line 256
    invoke-virtual {p1, p0}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    const/high16 p0, 0x3f800000    # 1.0f

    .line 258
    invoke-virtual {p1, p0}, Landroid/view/View;->setScaleX(F)V

    .line 259
    invoke-virtual {p1, p0}, Landroid/view/View;->setScaleY(F)V

    .line 260
    invoke-virtual {p1, p0}, Landroid/view/View;->setAlpha(F)V

    return-void
.end method

.method private synthetic lambda$setViewVisibleGoneFadeInOutAnim$1(ZLandroid/view/View;Landroid/widget/LinearLayout;)V
    .locals 0

    if-nez p1, :cond_0

    const/16 p1, 0x8

    .line 278
    invoke-virtual {p2, p1}, Landroid/view/View;->setVisibility(I)V

    .line 280
    invoke-virtual {p3, p1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    const/4 p1, 0x0

    .line 281
    invoke-virtual {p0, p1}, Lcom/oneplus/volume/OpVolumeDialogImpl;->changeEditTextAndTextViewForMarquee(Z)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    .line 283
    invoke-virtual {p0, p1}, Lcom/oneplus/volume/OpVolumeDialogImpl;->changeEditTextAndTextViewForMarquee(Z)V

    :goto_0
    const/high16 p0, 0x3f800000    # 1.0f

    .line 285
    invoke-virtual {p2, p0}, Landroid/view/View;->setAlpha(F)V

    return-void
.end method

.method private setDialogWidthH(I)V
    .locals 5

    .line 307
    invoke-direct {p0}, Lcom/oneplus/volume/OpVolumeDialogImpl;->getDialog()Lcom/android/systemui/volume/VolumeDialogImpl$CustomDialog;

    move-result-object v0

    sget v1, Lcom/android/systemui/R$id;->volume_dialog_container:I

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    .line 308
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 309
    invoke-direct {p0}, Lcom/oneplus/volume/OpVolumeDialogImpl;->isLandscape()Z

    move-result v2

    const/16 v3, 0x15

    const/16 v4, 0x13

    if-eqz v2, :cond_0

    move v2, v3

    goto :goto_0

    :cond_0
    move v2, v4

    :goto_0
    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 311
    iput p1, v1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 313
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 315
    invoke-direct {p0}, Lcom/oneplus/volume/OpVolumeDialogImpl;->getDialogView()Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 316
    invoke-direct {p0}, Lcom/oneplus/volume/OpVolumeDialogImpl;->isLandscape()Z

    move-result v1

    if-eqz v1, :cond_1

    move v1, v3

    goto :goto_1

    :cond_1
    move v1, v4

    :goto_1
    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 317
    invoke-direct {p0}, Lcom/oneplus/volume/OpVolumeDialogImpl;->getDialogView()Landroid/view/ViewGroup;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 320
    invoke-direct {p0}, Lcom/oneplus/volume/OpVolumeDialogImpl;->getDialog()Lcom/android/systemui/volume/VolumeDialogImpl$CustomDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 321
    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 323
    invoke-direct {p0}, Lcom/oneplus/volume/OpVolumeDialogImpl;->isLandscape()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 324
    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    goto :goto_2

    .line 326
    :cond_2
    iput v4, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 329
    :goto_2
    invoke-direct {p0}, Lcom/oneplus/volume/OpVolumeDialogImpl;->getDialog()Lcom/android/systemui/volume/VolumeDialogImpl$CustomDialog;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    return-void
.end method

.method private setViewVisibleGoneFadeInOutAndScaleAnim(Landroid/view/View;Z)V
    .locals 5

    const/4 p0, 0x0

    const/high16 v0, 0x3f000000    # 0.5f

    if-eqz p2, :cond_0

    .line 243
    invoke-virtual {p1, p0}, Landroid/view/View;->setAlpha(F)V

    .line 244
    invoke-virtual {p1, v0}, Landroid/view/View;->setScaleX(F)V

    .line 245
    invoke-virtual {p1, v0}, Landroid/view/View;->setScaleY(F)V

    const/4 v1, 0x0

    .line 246
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 248
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    const/high16 v2, 0x3f800000    # 1.0f

    if-eqz p2, :cond_1

    move v3, v2

    goto :goto_0

    :cond_1
    move v3, p0

    .line 249
    :goto_0
    invoke-virtual {v1, v3}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    if-eqz p2, :cond_2

    move v3, v2

    goto :goto_1

    :cond_2
    move v3, v0

    .line 250
    :goto_1
    invoke-virtual {v1, v3}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    if-eqz p2, :cond_3

    move v0, v2

    .line 251
    :cond_3
    invoke-virtual {v1, v0}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v3, 0x113

    .line 252
    invoke-virtual {v0, v3, v4}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Landroid/view/animation/PathInterpolator;

    const v3, 0x3ecccccd    # 0.4f

    invoke-direct {v1, v3, p0, v3, v2}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    .line 253
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    new-instance v0, Lcom/oneplus/volume/-$$Lambda$OpVolumeDialogImpl$f7qEr0d70p_O061iK0Mg-UuLhHg;

    invoke-direct {v0, p2, p1}, Lcom/oneplus/volume/-$$Lambda$OpVolumeDialogImpl$f7qEr0d70p_O061iK0Mg-UuLhHg;-><init>(ZLandroid/view/View;)V

    .line 254
    invoke-virtual {p0, v0}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    const-wide/16 p1, 0x0

    .line 262
    invoke-virtual {p0, p1, p2}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    return-void
.end method

.method private setViewVisibleGoneFadeInOutAnim(Landroid/view/View;ZLandroid/widget/LinearLayout;)V
    .locals 5

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    .line 267
    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    const/4 v1, 0x0

    .line 268
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 272
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    const/high16 v2, 0x3f800000    # 1.0f

    if-eqz p2, :cond_1

    move v3, v2

    goto :goto_0

    :cond_1
    move v3, v0

    .line 273
    :goto_0
    invoke-virtual {v1, v3}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    const-wide/16 v3, 0x113

    .line 274
    invoke-virtual {v1, v3, v4}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    new-instance v3, Landroid/view/animation/PathInterpolator;

    const v4, 0x3ecccccd    # 0.4f

    invoke-direct {v3, v4, v0, v4, v2}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    .line 275
    invoke-virtual {v1, v3}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lcom/oneplus/volume/-$$Lambda$OpVolumeDialogImpl$TA3PITzbby9aaH8iUXUPvx1U6QE;

    invoke-direct {v1, p0, p2, p1, p3}, Lcom/oneplus/volume/-$$Lambda$OpVolumeDialogImpl$TA3PITzbby9aaH8iUXUPvx1U6QE;-><init>(Lcom/oneplus/volume/OpVolumeDialogImpl;ZLandroid/view/View;Landroid/widget/LinearLayout;)V

    .line 276
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    const-wide/16 p1, 0x0

    .line 287
    invoke-virtual {p0, p1, p2}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    return-void
.end method

.method private updateVolumeRowTintH(Lcom/oneplus/volume/OpVolumeDialogImpl$VolumeRow;ZZ)V
    .locals 7

    .line 848
    const-class v0, Lcom/android/systemui/volume/VolumeDialogImpl;

    const/4 v1, 0x3

    new-array v2, v1, [Ljava/lang/Class;

    const-class v3, Lcom/oneplus/volume/OpVolumeDialogImpl$VolumeRow;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    sget-object v3, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v5, 0x1

    aput-object v3, v2, v5

    const/4 v6, 0x2

    aput-object v3, v2, v6

    const-string v3, "updateVolumeRowTintH"

    invoke-static {v0, v3, v2}, Lcom/oneplus/util/OpReflectionUtils;->getMethodWithParams(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v4

    .line 850
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    aput-object p1, v1, v5

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    aput-object p1, v1, v6

    invoke-static {p0, v0, v1}, Lcom/oneplus/util/OpReflectionUtils;->methodInvokeWithArgs(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method protected applyBlackTheme()V
    .locals 2

    .line 688
    iget-object v0, p0, Lcom/oneplus/volume/OpVolumeDialogImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 689
    sget v1, Lcom/android/systemui/R$drawable;->volume_dialog_bg_dark:I

    iput v1, p0, Lcom/oneplus/volume/OpVolumeDialogImpl;->mThemeColorDialogBackground:I

    .line 690
    sget v1, Lcom/android/systemui/R$drawable;->volume_dialog_row_container_bg:I

    iput v1, p0, Lcom/oneplus/volume/OpVolumeDialogImpl;->mThemeColorDialogRowContainerBackground:I

    .line 691
    sget v1, Lcom/android/systemui/R$color;->oneplus_contorl_text_color_secondary_dark:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/oneplus/volume/OpVolumeDialogImpl;->mThemeColorText:I

    .line 693
    sget v1, Lcom/android/systemui/R$color;->op_volume_icon_color:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/oneplus/volume/OpVolumeDialogImpl;->mThemeColorIcon:I

    .line 695
    sget v1, Lcom/android/systemui/R$drawable;->volume_dialog_progress:I

    iput v1, p0, Lcom/oneplus/volume/OpVolumeDialogImpl;->mThemeColorSeekbarBackgroundDrawable:I

    .line 696
    sget v1, Lcom/android/systemui/R$color;->op_volume_outputchooser_bg_color:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/oneplus/volume/OpVolumeDialogImpl;->mThemeButtonBg:I

    .line 700
    invoke-static {}, Lcom/oneplus/util/OpUtils;->isREDVersion()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 701
    sget v1, Lcom/android/systemui/R$drawable;->volume_dialog_bg_red_dark:I

    iput v1, p0, Lcom/oneplus/volume/OpVolumeDialogImpl;->mThemeColorDialogBackground:I

    const/4 v1, 0x0

    .line 702
    iput v1, p0, Lcom/oneplus/volume/OpVolumeDialogImpl;->mThemeColorDialogRowContainerBackground:I

    .line 703
    sget v1, Lcom/android/systemui/R$color;->op_turquoise:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/oneplus/volume/OpVolumeDialogImpl;->mThemeColorIcon:I

    :cond_0
    return-void
.end method

.method protected applyColorTheme(Z)V
    .locals 3

    .line 643
    iget-object v0, p0, Lcom/oneplus/volume/OpVolumeDialogImpl;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/oneplus/util/OpUtils;->getThemeColor(Landroid/content/Context;)I

    move-result v0

    .line 646
    invoke-direct {p0, v0, p1}, Lcom/oneplus/volume/OpVolumeDialogImpl;->isAccentColorChanged(IZ)Z

    move-result v1

    .line 649
    iget v2, p0, Lcom/oneplus/volume/OpVolumeDialogImpl;->mThemeColorMode:I

    if-ne v2, v0, :cond_0

    if-nez v1, :cond_0

    if-nez p1, :cond_0

    return-void

    .line 653
    :cond_0
    iput v0, p0, Lcom/oneplus/volume/OpVolumeDialogImpl;->mThemeColorMode:I

    if-eqz v0, :cond_2

    const/4 p1, 0x1

    if-eq v0, p1, :cond_1

    .line 666
    invoke-virtual {p0}, Lcom/oneplus/volume/OpVolumeDialogImpl;->applyWhiteTheme()V

    goto :goto_0

    .line 660
    :cond_1
    invoke-virtual {p0}, Lcom/oneplus/volume/OpVolumeDialogImpl;->applyBlackTheme()V

    goto :goto_0

    .line 657
    :cond_2
    invoke-virtual {p0}, Lcom/oneplus/volume/OpVolumeDialogImpl;->applyWhiteTheme()V

    .line 671
    :goto_0
    invoke-direct {p0}, Lcom/oneplus/volume/OpVolumeDialogImpl;->applyColors()V

    return-void
.end method

.method protected applyWhiteTheme()V
    .locals 2

    .line 675
    iget-object v0, p0, Lcom/oneplus/volume/OpVolumeDialogImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 676
    sget v1, Lcom/android/systemui/R$drawable;->volume_dialog_bg_light:I

    iput v1, p0, Lcom/oneplus/volume/OpVolumeDialogImpl;->mThemeColorDialogBackground:I

    .line 677
    sget v1, Lcom/android/systemui/R$drawable;->volume_dialog_row_container_bg:I

    iput v1, p0, Lcom/oneplus/volume/OpVolumeDialogImpl;->mThemeColorDialogRowContainerBackground:I

    .line 678
    sget v1, Lcom/android/systemui/R$color;->oneplus_contorl_text_color_secondary_light:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/oneplus/volume/OpVolumeDialogImpl;->mThemeColorText:I

    .line 680
    sget v1, Lcom/android/systemui/R$color;->op_volume_icon_color:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/oneplus/volume/OpVolumeDialogImpl;->mThemeColorIcon:I

    .line 682
    sget v1, Lcom/android/systemui/R$drawable;->volume_dialog_progress:I

    iput v1, p0, Lcom/oneplus/volume/OpVolumeDialogImpl;->mThemeColorSeekbarBackgroundDrawable:I

    .line 683
    sget v1, Lcom/android/systemui/R$color;->op_volume_outputchooser_bg_color:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/oneplus/volume/OpVolumeDialogImpl;->mThemeButtonBg:I

    return-void
.end method

.method protected changeEditTextAndTextViewForMarquee(Z)V
    .locals 2

    const/16 v0, 0x8

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    .line 292
    iget-object p1, p0, Lcom/oneplus/volume/OpVolumeDialogImpl;->mOutputChooserExpandEditText:Landroid/widget/EditText;

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setVisibility(I)V

    .line 293
    iget-object p0, p0, Lcom/oneplus/volume/OpVolumeDialogImpl;->mOutputChooserExpandTextView:Landroid/widget/TextView;

    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 295
    :cond_0
    iget-object p1, p0, Lcom/oneplus/volume/OpVolumeDialogImpl;->mOutputChooserExpandEditText:Landroid/widget/EditText;

    invoke-virtual {p1, v1}, Landroid/widget/EditText;->setVisibility(I)V

    .line 296
    iget-object p0, p0, Lcom/oneplus/volume/OpVolumeDialogImpl;->mOutputChooserExpandTextView:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method protected generateOutputChooserH()V
    .locals 4

    .line 599
    new-instance v0, Lcom/oneplus/volume/OpVolumeDialogImpl$2;

    iget-object v1, p0, Lcom/oneplus/volume/OpVolumeDialogImpl;->mContext:Landroid/content/Context;

    new-instance v2, Lcom/android/systemui/volume/MediaRouterWrapper;

    .line 600
    invoke-static {v1}, Landroidx/mediarouter/media/MediaRouter;->getInstance(Landroid/content/Context;)Landroidx/mediarouter/media/MediaRouter;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/android/systemui/volume/MediaRouterWrapper;-><init>(Landroidx/mediarouter/media/MediaRouter;)V

    invoke-direct {v0, p0, v1, v2}, Lcom/oneplus/volume/OpVolumeDialogImpl$2;-><init>(Lcom/oneplus/volume/OpVolumeDialogImpl;Landroid/content/Context;Lcom/android/systemui/volume/MediaRouterWrapper;)V

    iput-object v0, p0, Lcom/oneplus/volume/OpVolumeDialogImpl;->mOutputChooserDialog:Lcom/oneplus/volume/OpOutputChooserDialog;

    return-void
.end method

.method protected isStatusBarShowing()Z
    .locals 2

    .line 825
    invoke-static {}, Lcom/oneplus/plugin/OpLsState;->getInstance()Lcom/oneplus/plugin/OpLsState;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oneplus/plugin/OpLsState;->getPhoneStatusBar()Lcom/android/systemui/statusbar/phone/StatusBar;

    move-result-object p0

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    .line 826
    invoke-static {}, Lcom/oneplus/plugin/OpLsState;->getInstance()Lcom/oneplus/plugin/OpLsState;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oneplus/plugin/OpLsState;->getPhoneStatusBar()Lcom/android/systemui/statusbar/phone/StatusBar;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->getStatusBarWindowState()I

    move-result p0

    goto :goto_0

    :cond_0
    move p0, v0

    :goto_0
    if-eqz p0, :cond_1

    const-string p0, "OpVolumeDialogImpl"

    const-string v1, "adjust to 1500"

    .line 829
    invoke-static {p0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method public synthetic lambda$setViewVisibleGoneFadeInOutAnim$1$OpVolumeDialogImpl(ZLandroid/view/View;Landroid/widget/LinearLayout;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/oneplus/volume/OpVolumeDialogImpl;->lambda$setViewVisibleGoneFadeInOutAnim$1(ZLandroid/view/View;Landroid/widget/LinearLayout;)V

    return-void
.end method

.method protected loadOpDimens()V
    .locals 5

    .line 340
    iget-object v0, p0, Lcom/oneplus/volume/OpVolumeDialogImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 341
    sget v1, Lcom/android/systemui/R$dimen;->op_volume_dialog_panel_transparent_padding:I

    const/16 v2, 0x438

    invoke-static {v0, v1, v2}, Lcom/oneplus/util/OpUtils;->getDimensionPixelSize(Landroid/content/res/Resources;II)I

    move-result v1

    .line 342
    sget v3, Lcom/android/systemui/R$dimen;->op_volume_dialog_panel_width:I

    invoke-static {v0, v3, v2}, Lcom/oneplus/util/OpUtils;->getDimensionPixelSize(Landroid/content/res/Resources;II)I

    move-result v0

    .line 345
    iget-object v2, p0, Lcom/oneplus/volume/OpVolumeDialogImpl;->mRows:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    .line 346
    iget-object v3, p0, Lcom/oneplus/volume/OpVolumeDialogImpl;->mContext:Landroid/content/Context;

    .line 347
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/android/systemui/R$dimen;->oneplus_contorl_layout_margin_left1:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    mul-int/lit8 v3, v3, 0x2

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v3, v1

    add-int/2addr v3, v0

    iput v3, p0, Lcom/oneplus/volume/OpVolumeDialogImpl;->mOpBeforeExpandWidth:I

    .line 351
    iget-object v3, p0, Lcom/oneplus/volume/OpVolumeDialogImpl;->mContext:Landroid/content/Context;

    .line 352
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/android/systemui/R$dimen;->oneplus_contorl_layout_margin_left1:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    mul-int/lit8 v3, v3, 0x2

    add-int/2addr v3, v1

    mul-int/2addr v2, v0

    add-int/2addr v3, v2

    iput v3, p0, Lcom/oneplus/volume/OpVolumeDialogImpl;->mOpafterExpandWidth:I

    return-void
.end method

.method protected setDialogWidth(I)V
    .locals 2

    .line 301
    iget-object v0, p0, Lcom/oneplus/volume/OpVolumeDialogImpl;->mHandler:Lcom/oneplus/volume/OpVolumeDialogImpl$OpHandler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 302
    iget-object p0, p0, Lcom/oneplus/volume/OpVolumeDialogImpl;->mHandler:Lcom/oneplus/volume/OpVolumeDialogImpl$OpHandler;

    const/4 v0, 0x0

    invoke-virtual {p0, v1, p1, v0}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method protected setExpandFeautureDismissState()V
    .locals 2

    const/4 v0, 0x0

    .line 612
    iput-boolean v0, p0, Lcom/oneplus/volume/OpVolumeDialogImpl;->mOpLastforceExpandState:Z

    .line 613
    iput-boolean v0, p0, Lcom/oneplus/volume/OpVolumeDialogImpl;->mOpForceExpandState:Z

    const/4 v1, 0x1

    .line 615
    invoke-virtual {p0, v0, v1}, Lcom/oneplus/volume/OpVolumeDialogImpl;->setOpOutputChooserVisible(ZZ)V

    .line 616
    invoke-direct {p0}, Lcom/oneplus/volume/OpVolumeDialogImpl;->initSettingsH()V

    .line 617
    iget-object v0, p0, Lcom/oneplus/volume/OpVolumeDialogImpl;->mOpOutputChooser:Lcom/oneplus/volume/OpOutputChooser;

    if-eqz v0, :cond_0

    .line 618
    iput-boolean v1, p0, Lcom/oneplus/volume/OpVolumeDialogImpl;->mFirstTimeInitDialog:Z

    .line 619
    invoke-virtual {v0}, Lcom/oneplus/volume/OpOutputChooser;->removeCallback()V

    .line 620
    iget-object v0, p0, Lcom/oneplus/volume/OpVolumeDialogImpl;->mOpOutputChooser:Lcom/oneplus/volume/OpOutputChooser;

    invoke-virtual {v0}, Lcom/oneplus/volume/OpOutputChooser;->destory()V

    const/4 v0, 0x0

    .line 621
    iput-object v0, p0, Lcom/oneplus/volume/OpVolumeDialogImpl;->mOpOutputChooser:Lcom/oneplus/volume/OpOutputChooser;

    :cond_0
    return-void
.end method

.method protected setOpOutputChooserGravityNeedBeforeAnimStart(Z)V
    .locals 1

    .line 193
    iget-object v0, p0, Lcom/oneplus/volume/OpVolumeDialogImpl;->mOutputChooser:Landroid/widget/ImageButton;

    invoke-virtual {v0}, Landroid/widget/ImageButton;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    if-eqz p1, :cond_0

    const/4 p1, 0x3

    .line 195
    iput p1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 196
    iget-object p0, p0, Lcom/oneplus/volume/OpVolumeDialogImpl;->mOutputChooser:Landroid/widget/ImageButton;

    invoke-virtual {p0, v0}, Landroid/widget/ImageButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    :cond_0
    const/16 p1, 0x11

    .line 198
    iput p1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 199
    iget-object p0, p0, Lcom/oneplus/volume/OpVolumeDialogImpl;->mOutputChooser:Landroid/widget/ImageButton;

    invoke-virtual {p0, v0}, Landroid/widget/ImageButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :goto_0
    return-void
.end method

.method protected setOpOutputChooserVisible(Z)V
    .locals 1

    const/4 v0, 0x0

    .line 204
    invoke-virtual {p0, p1, v0}, Lcom/oneplus/volume/OpVolumeDialogImpl;->setOpOutputChooserVisible(ZZ)V

    return-void
.end method

.method protected setOpOutputChooserVisible(ZZ)V
    .locals 5

    .line 208
    sget-boolean v0, Lcom/oneplus/util/OpUtils;->DEBUG_ONEPLUS:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setOpOutputChooserVisible:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mOpForceExpandState:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/oneplus/volume/OpVolumeDialogImpl;->mOpForceExpandState:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OpVolumeDialogImpl"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
    :cond_0
    invoke-direct {p0}, Lcom/oneplus/volume/OpVolumeDialogImpl;->getDialogView()Landroid/view/ViewGroup;

    move-result-object v0

    sget v1, Lcom/android/systemui/R$id;->output_chooser_background_container:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    .line 211
    invoke-direct {p0}, Lcom/oneplus/volume/OpVolumeDialogImpl;->getDialogView()Landroid/view/ViewGroup;

    move-result-object v0

    sget v1, Lcom/android/systemui/R$id;->output_active_device_container:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz p1, :cond_2

    .line 213
    iget-object p1, p0, Lcom/oneplus/volume/OpVolumeDialogImpl;->mOutputChooserExpandIcon:Landroid/widget/ImageView;

    iget-object v4, p0, Lcom/oneplus/volume/OpVolumeDialogImpl;->mDeviceInfo:Lcom/oneplus/volume/OpVolumeDialogImpl$DeviceInfo;

    iget v4, v4, Lcom/oneplus/volume/OpVolumeDialogImpl$DeviceInfo;->iconResId:I

    invoke-virtual {p1, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 214
    iget-object p1, p0, Lcom/oneplus/volume/OpVolumeDialogImpl;->mOutputChooserExpandEditText:Landroid/widget/EditText;

    iget-object v4, p0, Lcom/oneplus/volume/OpVolumeDialogImpl;->mDeviceInfo:Lcom/oneplus/volume/OpVolumeDialogImpl$DeviceInfo;

    iget-object v4, v4, Lcom/oneplus/volume/OpVolumeDialogImpl$DeviceInfo;->deviceInfoName:Ljava/lang/String;

    invoke-virtual {p1, v4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 215
    iget-object p1, p0, Lcom/oneplus/volume/OpVolumeDialogImpl;->mOutputChooserExpandTextView:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/oneplus/volume/OpVolumeDialogImpl;->mDeviceInfo:Lcom/oneplus/volume/OpVolumeDialogImpl$DeviceInfo;

    iget-object v4, v4, Lcom/oneplus/volume/OpVolumeDialogImpl$DeviceInfo;->deviceInfoName:Ljava/lang/String;

    invoke-virtual {p1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 216
    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    if-eqz p2, :cond_1

    .line 218
    iget-object p1, p0, Lcom/oneplus/volume/OpVolumeDialogImpl;->mOutputChooserExpandIcon:Landroid/widget/ImageView;

    invoke-virtual {p1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 219
    iget-object p1, p0, Lcom/oneplus/volume/OpVolumeDialogImpl;->mOutputChooser:Landroid/widget/ImageButton;

    invoke-virtual {p1, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 220
    iget-object p1, p0, Lcom/oneplus/volume/OpVolumeDialogImpl;->mOutputChooserExpandEditText:Landroid/widget/EditText;

    invoke-virtual {p1, v3}, Landroid/widget/EditText;->setVisibility(I)V

    goto :goto_0

    .line 222
    :cond_1
    iget-object p1, p0, Lcom/oneplus/volume/OpVolumeDialogImpl;->mOutputChooserExpandIcon:Landroid/widget/ImageView;

    invoke-direct {p0, p1, v2}, Lcom/oneplus/volume/OpVolumeDialogImpl;->setViewVisibleGoneFadeInOutAndScaleAnim(Landroid/view/View;Z)V

    .line 223
    iget-object p1, p0, Lcom/oneplus/volume/OpVolumeDialogImpl;->mOutputChooser:Landroid/widget/ImageButton;

    invoke-direct {p0, p1, v3}, Lcom/oneplus/volume/OpVolumeDialogImpl;->setViewVisibleGoneFadeInOutAndScaleAnim(Landroid/view/View;Z)V

    .line 224
    iget-object p1, p0, Lcom/oneplus/volume/OpVolumeDialogImpl;->mOutputChooserExpandEditText:Landroid/widget/EditText;

    invoke-direct {p0, p1, v2, v0}, Lcom/oneplus/volume/OpVolumeDialogImpl;->setViewVisibleGoneFadeInOutAnim(Landroid/view/View;ZLandroid/widget/LinearLayout;)V

    .line 226
    :goto_0
    iget-object p0, p0, Lcom/oneplus/volume/OpVolumeDialogImpl;->mOutputChooserExpandTextView:Landroid/widget/TextView;

    invoke-virtual {p0, v2}, Landroid/widget/TextView;->setSelected(Z)V

    goto :goto_1

    :cond_2
    if-eqz p2, :cond_3

    .line 229
    iget-object p1, p0, Lcom/oneplus/volume/OpVolumeDialogImpl;->mOutputChooserExpandIcon:Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 230
    iget-object p1, p0, Lcom/oneplus/volume/OpVolumeDialogImpl;->mOutputChooser:Landroid/widget/ImageButton;

    invoke-virtual {p1, v3}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 231
    iget-object p0, p0, Lcom/oneplus/volume/OpVolumeDialogImpl;->mOutputChooserExpandTextView:Landroid/widget/TextView;

    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 232
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_1

    .line 234
    :cond_3
    iget-object p1, p0, Lcom/oneplus/volume/OpVolumeDialogImpl;->mOutputChooserExpandIcon:Landroid/widget/ImageView;

    invoke-direct {p0, p1, v3}, Lcom/oneplus/volume/OpVolumeDialogImpl;->setViewVisibleGoneFadeInOutAndScaleAnim(Landroid/view/View;Z)V

    .line 235
    iget-object p1, p0, Lcom/oneplus/volume/OpVolumeDialogImpl;->mOutputChooser:Landroid/widget/ImageButton;

    invoke-direct {p0, p1, v2}, Lcom/oneplus/volume/OpVolumeDialogImpl;->setViewVisibleGoneFadeInOutAndScaleAnim(Landroid/view/View;Z)V

    .line 236
    iget-object p1, p0, Lcom/oneplus/volume/OpVolumeDialogImpl;->mOutputChooserExpandTextView:Landroid/widget/TextView;

    invoke-direct {p0, p1, v3, v0}, Lcom/oneplus/volume/OpVolumeDialogImpl;->setViewVisibleGoneFadeInOutAnim(Landroid/view/View;ZLandroid/widget/LinearLayout;)V

    :goto_1
    return-void
.end method

.method protected showOutputChooserH()V
    .locals 2

    .line 583
    iget-object v0, p0, Lcom/oneplus/volume/OpVolumeDialogImpl;->mOutputChooserLock:Ljava/lang/Object;

    monitor-enter v0

    .line 584
    :try_start_0
    iget-object v1, p0, Lcom/oneplus/volume/OpVolumeDialogImpl;->mOutputChooserDialog:Lcom/oneplus/volume/OpOutputChooserDialog;

    if-eqz v1, :cond_0

    .line 585
    monitor-exit v0

    return-void

    .line 588
    :cond_0
    iget-object v1, p0, Lcom/oneplus/volume/OpVolumeDialogImpl;->mOutputChooserDialog:Lcom/oneplus/volume/OpOutputChooserDialog;

    if-nez v1, :cond_1

    .line 589
    invoke-virtual {p0}, Lcom/oneplus/volume/OpVolumeDialogImpl;->generateOutputChooserH()V

    .line 592
    :cond_1
    iget-object v1, p0, Lcom/oneplus/volume/OpVolumeDialogImpl;->mOutputChooserDialog:Lcom/oneplus/volume/OpOutputChooserDialog;

    invoke-virtual {v1}, Lcom/oneplus/volume/OpOutputChooserDialog;->show()V

    .line 593
    iget-object v1, p0, Lcom/oneplus/volume/OpVolumeDialogImpl;->mOutputChooserDialog:Lcom/oneplus/volume/OpOutputChooserDialog;

    iget p0, p0, Lcom/oneplus/volume/OpVolumeDialogImpl;->mThemeColorMode:I

    invoke-virtual {v1, p0}, Lcom/oneplus/volume/OpOutputChooserDialog;->setTheme(I)V

    .line 594
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method protected updateButtonLayout(Landroid/view/View;Landroid/widget/ImageButton;Landroid/content/res/Resources;)V
    .locals 4

    .line 424
    sget p0, Lcom/android/systemui/R$dimen;->op_volume_dialog_settings_container_height:I

    const/16 v0, 0x438

    invoke-static {p3, p0, v0}, Lcom/oneplus/util/OpUtils;->getDimensionPixelSize(Landroid/content/res/Resources;II)I

    move-result p0

    .line 425
    sget v1, Lcom/android/systemui/R$dimen;->op_volume_dialog_panel_transparent_padding:I

    invoke-static {p3, v1, v0}, Lcom/oneplus/util/OpUtils;->getDimensionPixelSize(Landroid/content/res/Resources;II)I

    move-result v1

    .line 426
    sget v2, Lcom/android/systemui/R$dimen;->op_volume_dialog_panel_width:I

    invoke-static {p3, v2, v0}, Lcom/oneplus/util/OpUtils;->getDimensionPixelSize(Landroid/content/res/Resources;II)I

    move-result v2

    .line 427
    sget v3, Lcom/android/systemui/R$dimen;->op_volume_dialog_settings_margin:I

    invoke-static {p3, v3, v0}, Lcom/oneplus/util/OpUtils;->getDimensionPixelSize(Landroid/content/res/Resources;II)I

    move-result p3

    .line 430
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 431
    iput p0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    const/4 p0, 0x0

    .line 432
    invoke-virtual {v0, v1, p0, v1, p0}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 433
    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 436
    invoke-virtual {p2}, Landroid/widget/ImageButton;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    .line 437
    iput v2, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 438
    iput v2, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 439
    invoke-virtual {p2, p3, p0, p3, p0}, Landroid/widget/ImageButton;->setPadding(IIII)V

    .line 440
    invoke-virtual {p2, p1}, Landroid/widget/ImageButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method protected updateDialogLayout()V
    .locals 12

    .line 359
    iget-object v0, p0, Lcom/oneplus/volume/OpVolumeDialogImpl;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_1

    invoke-static {v0}, Lcom/oneplus/util/OpUtils;->isSupportResolutionSwitch(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_0

    .line 362
    :cond_0
    iget-object v0, p0, Lcom/oneplus/volume/OpVolumeDialogImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 364
    sget v1, Lcom/android/systemui/R$dimen;->op_volume_dialog_panel_width:I

    const/16 v2, 0x438

    invoke-static {v0, v1, v2}, Lcom/oneplus/util/OpUtils;->getDimensionPixelSize(Landroid/content/res/Resources;II)I

    move-result v1

    .line 365
    sget v3, Lcom/android/systemui/R$dimen;->op_volume_dialog_panel_transparent_padding:I

    invoke-static {v0, v3, v2}, Lcom/oneplus/util/OpUtils;->getDimensionPixelSize(Landroid/content/res/Resources;II)I

    move-result v3

    .line 366
    sget v4, Lcom/android/systemui/R$dimen;->op_volume_dialog_outer_size:I

    invoke-static {v0, v4, v2}, Lcom/oneplus/util/OpUtils;->getDimensionPixelSize(Landroid/content/res/Resources;II)I

    move-result v4

    .line 367
    sget v5, Lcom/android/systemui/R$dimen;->op_volume_dialog_elevation:I

    invoke-static {v0, v5, v2}, Lcom/oneplus/util/OpUtils;->getDimensionPixelSize(Landroid/content/res/Resources;II)I

    move-result v5

    .line 368
    sget v6, Lcom/android/systemui/R$dimen;->op_volume_dialog_output_chooser_padding:I

    invoke-static {v0, v6, v2}, Lcom/oneplus/util/OpUtils;->getDimensionPixelSize(Landroid/content/res/Resources;II)I

    move-result v6

    .line 369
    sget v7, Lcom/android/systemui/R$dimen;->op_volume_dialog_output_chooser_padding2:I

    invoke-static {v0, v7, v2}, Lcom/oneplus/util/OpUtils;->getDimensionPixelSize(Landroid/content/res/Resources;II)I

    move-result v7

    .line 370
    sget v8, Lcom/android/systemui/R$dimen;->op_volume_dialog_image_icon_width:I

    invoke-static {v0, v8, v2}, Lcom/oneplus/util/OpUtils;->getDimensionPixelSize(Landroid/content/res/Resources;II)I

    move-result v8

    .line 371
    sget v9, Lcom/android/systemui/R$dimen;->op_volume_dialog_output_chooser_expand_text_size:I

    invoke-static {v0, v9, v2}, Lcom/oneplus/util/OpUtils;->getDimensionPixelSize(Landroid/content/res/Resources;II)I

    move-result v9

    .line 372
    sget v10, Lcom/android/systemui/R$dimen;->op_volume_dialog_settings_margin:I

    invoke-static {v0, v10, v2}, Lcom/oneplus/util/OpUtils;->getDimensionPixelSize(Landroid/content/res/Resources;II)I

    .line 373
    sget v10, Lcom/android/systemui/R$dimen;->op_volume_dialog_settings_container_height:I

    invoke-static {v0, v10, v2}, Lcom/oneplus/util/OpUtils;->getDimensionPixelSize(Landroid/content/res/Resources;II)I

    .line 376
    invoke-direct {p0}, Lcom/oneplus/volume/OpVolumeDialogImpl;->getDialogView()Landroid/view/ViewGroup;

    move-result-object v10

    invoke-virtual {v10, v1}, Landroid/view/ViewGroup;->setMinimumWidth(I)V

    .line 378
    invoke-direct {p0}, Lcom/oneplus/volume/OpVolumeDialogImpl;->getDialogView()Landroid/view/ViewGroup;

    move-result-object v10

    sget v11, Lcom/android/systemui/R$id;->main:I

    invoke-virtual {v10, v11}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v10

    invoke-virtual {v10, v1}, Landroid/view/View;->setMinimumWidth(I)V

    .line 380
    iget-object v1, p0, Lcom/oneplus/volume/OpVolumeDialogImpl;->mDialogRowContainer:Landroid/view/ViewGroup;

    sget v10, Lcom/android/systemui/R$dimen;->op_volume_dialog_content_padding_top:I

    .line 382
    invoke-static {v0, v10, v2}, Lcom/oneplus/util/OpUtils;->getDimensionPixelSize(Landroid/content/res/Resources;II)I

    move-result v10

    const/4 v11, 0x0

    .line 380
    invoke-virtual {v1, v3, v10, v3, v11}, Landroid/view/ViewGroup;->setPadding(IIII)V

    .line 386
    iget-object v1, p0, Lcom/oneplus/volume/OpVolumeDialogImpl;->mOutputChooserBackgroundView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 387
    iput v4, v1, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 388
    iput v5, v1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 389
    iput v5, v1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 390
    iget-object v3, p0, Lcom/oneplus/volume/OpVolumeDialogImpl;->mOutputChooserBackgroundView:Landroid/view/View;

    invoke-virtual {v3, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 392
    iget-object v1, p0, Lcom/oneplus/volume/OpVolumeDialogImpl;->mOutputChooser:Landroid/widget/ImageButton;

    invoke-virtual {v1}, Landroid/widget/ImageButton;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 393
    iput v8, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 394
    iput v4, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 395
    iget-object v3, p0, Lcom/oneplus/volume/OpVolumeDialogImpl;->mOutputChooser:Landroid/widget/ImageButton;

    invoke-virtual {v3, v11, v6, v11, v6}, Landroid/widget/ImageButton;->setPadding(IIII)V

    .line 396
    iget-object v3, p0, Lcom/oneplus/volume/OpVolumeDialogImpl;->mOutputChooser:Landroid/widget/ImageButton;

    invoke-virtual {v3, v1}, Landroid/widget/ImageButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 398
    iget-object v1, p0, Lcom/oneplus/volume/OpVolumeDialogImpl;->mOutputChooserExpandIcon:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 399
    iput v8, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 400
    iput v4, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 401
    iget-object v3, p0, Lcom/oneplus/volume/OpVolumeDialogImpl;->mOutputChooserExpandIcon:Landroid/widget/ImageView;

    invoke-virtual {v3, v11, v7, v11, v7}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 402
    iget-object v3, p0, Lcom/oneplus/volume/OpVolumeDialogImpl;->mOutputChooserExpandIcon:Landroid/widget/ImageView;

    invoke-virtual {v3, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 404
    iget-object v1, p0, Lcom/oneplus/volume/OpVolumeDialogImpl;->mOutputChooserExpandEditText:Landroid/widget/EditText;

    int-to-float v3, v9

    invoke-virtual {v1, v11, v3}, Landroid/widget/EditText;->setTextSize(IF)V

    .line 406
    iget-object v1, p0, Lcom/oneplus/volume/OpVolumeDialogImpl;->mOutputChooserExpandTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v11, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 408
    iget-object v1, p0, Lcom/oneplus/volume/OpVolumeDialogImpl;->mConnectedDevice:Landroid/widget/TextView;

    sget v3, Lcom/android/systemui/R$dimen;->op_volume_dialog_volume_row_connected_device_text_size:I

    invoke-static {v0, v3, v2}, Lcom/oneplus/util/OpUtils;->getDimensionPixelSize(Landroid/content/res/Resources;II)I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v1, v11, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 410
    invoke-virtual {p0, v0}, Lcom/oneplus/volume/OpVolumeDialogImpl;->updateVolumeRowLayout(Landroid/content/res/Resources;)V

    .line 412
    invoke-direct {p0}, Lcom/oneplus/volume/OpVolumeDialogImpl;->getSettingsView()Landroid/view/View;

    move-result-object v1

    invoke-direct {p0}, Lcom/oneplus/volume/OpVolumeDialogImpl;->getSettingsIcon()Landroid/widget/ImageButton;

    move-result-object v3

    invoke-virtual {p0, v1, v3, v0}, Lcom/oneplus/volume/OpVolumeDialogImpl;->updateButtonLayout(Landroid/view/View;Landroid/widget/ImageButton;Landroid/content/res/Resources;)V

    .line 414
    invoke-direct {p0}, Lcom/oneplus/volume/OpVolumeDialogImpl;->getSettingsBackView()Landroid/view/View;

    move-result-object v1

    invoke-direct {p0}, Lcom/oneplus/volume/OpVolumeDialogImpl;->getSettingsBackIcon()Landroid/widget/ImageButton;

    move-result-object v3

    invoke-virtual {p0, v1, v3, v0}, Lcom/oneplus/volume/OpVolumeDialogImpl;->updateButtonLayout(Landroid/view/View;Landroid/widget/ImageButton;Landroid/content/res/Resources;)V

    .line 416
    invoke-direct {p0}, Lcom/oneplus/volume/OpVolumeDialogImpl;->getSettingsOpSettingsView()Landroid/view/View;

    move-result-object v1

    invoke-direct {p0}, Lcom/oneplus/volume/OpVolumeDialogImpl;->getSettingsOpSettingsIcon()Landroid/widget/ImageButton;

    move-result-object v3

    invoke-virtual {p0, v1, v3, v0}, Lcom/oneplus/volume/OpVolumeDialogImpl;->updateButtonLayout(Landroid/view/View;Landroid/widget/ImageButton;Landroid/content/res/Resources;)V

    .line 419
    iget-object v1, p0, Lcom/oneplus/volume/OpVolumeDialogImpl;->mODICaptionsView:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    sget v3, Lcom/android/systemui/R$dimen;->op_volume_dialog_odi_captions_bottom_height:I

    invoke-static {v0, v3, v2}, Lcom/oneplus/util/OpUtils;->getDimensionPixelSize(Landroid/content/res/Resources;II)I

    move-result v0

    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 420
    invoke-direct {p0}, Lcom/oneplus/volume/OpVolumeDialogImpl;->getDialogView()Landroid/view/ViewGroup;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->invalidate()V

    :cond_1
    :goto_0
    return-void
.end method

.method protected updateODIRelatedLayout()V
    .locals 13

    .line 482
    iget-object v0, p0, Lcom/oneplus/volume/OpVolumeDialogImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 483
    sget v1, Lcom/android/systemui/R$dimen;->op_volume_dialog_icon_size:I

    const/16 v2, 0x438

    invoke-static {v0, v1, v2}, Lcom/oneplus/util/OpUtils;->getDimensionPixelSize(Landroid/content/res/Resources;II)I

    move-result v1

    .line 484
    sget v3, Lcom/android/systemui/R$dimen;->op_volume_dialog_odi_captions_margin:I

    invoke-static {v0, v3, v2}, Lcom/oneplus/util/OpUtils;->getDimensionPixelSize(Landroid/content/res/Resources;II)I

    move-result v3

    .line 485
    sget v4, Lcom/android/systemui/R$dimen;->op_volume_dialog_settings_container_height:I

    invoke-static {v0, v4, v2}, Lcom/oneplus/util/OpUtils;->getDimensionPixelSize(Landroid/content/res/Resources;II)I

    move-result v4

    .line 486
    sget v5, Lcom/android/systemui/R$dimen;->op_volume_dialog_row_margin_bottom:I

    invoke-static {v0, v5, v2}, Lcom/oneplus/util/OpUtils;->getDimensionPixelSize(Landroid/content/res/Resources;II)I

    move-result v5

    .line 487
    sget v6, Lcom/android/systemui/R$dimen;->op_volume_dialog_slider_height:I

    invoke-static {v0, v6, v2}, Lcom/oneplus/util/OpUtils;->getDimensionPixelSize(Landroid/content/res/Resources;II)I

    move-result v0

    mul-int/lit8 v3, v3, 0x2

    add-int/2addr v3, v1

    .line 494
    iget-object v2, p0, Lcom/oneplus/volume/OpVolumeDialogImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v6, Lcom/android/systemui/R$dimen;->oneplus_contorl_layout_margin_left1:I

    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 498
    invoke-direct {p0}, Lcom/oneplus/volume/OpVolumeDialogImpl;->isLandscape()Z

    move-result v6

    const-string v7, "OpVolumeDialogImpl"

    if-eqz v6, :cond_1

    .line 499
    iget-object v3, p0, Lcom/oneplus/volume/OpVolumeDialogImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v3, v3, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    .line 500
    iget-object v4, p0, Lcom/oneplus/volume/OpVolumeDialogImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/android/systemui/R$dimen;->op_volume_dialog_odi_captions_margin_land:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    .line 501
    invoke-direct {p0}, Lcom/oneplus/volume/OpVolumeDialogImpl;->getDialogView()Landroid/view/ViewGroup;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v5, 0x19b

    const v6, 0x43cd8000    # 411.0f

    const-wide/high16 v8, 0x3ff8000000000000L    # 1.5

    if-gt v3, v5, :cond_0

    int-to-float v5, v3

    div-float/2addr v5, v6

    const/high16 v10, 0x3f000000    # 0.5f

    mul-float/2addr v5, v10

    int-to-float v4, v4

    mul-float/2addr v4, v5

    float-to-int v4, v4

    .line 509
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "mODICaptionsView swdp:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, " resizeRate:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v7, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 510
    invoke-direct {p0}, Lcom/oneplus/volume/OpVolumeDialogImpl;->getDialogView()Landroid/view/ViewGroup;

    move-result-object v10

    int-to-float v11, v2

    mul-float/2addr v11, v5

    float-to-int v5, v11

    int-to-double v11, v2

    mul-double/2addr v11, v8

    double-to-int v8, v11

    invoke-virtual {v10, v2, v5, v8, v2}, Landroid/view/ViewGroup;->setPadding(IIII)V

    goto :goto_0

    .line 513
    :cond_0
    invoke-direct {p0}, Lcom/oneplus/volume/OpVolumeDialogImpl;->getDialogView()Landroid/view/ViewGroup;

    move-result-object v5

    int-to-double v10, v2

    mul-double/2addr v10, v8

    double-to-int v8, v10

    invoke-virtual {v5, v2, v2, v8, v2}, Landroid/view/ViewGroup;->setPadding(IIII)V

    :goto_0
    move v5, v4

    mul-int/lit8 v2, v5, 0x2

    add-int v4, v1, v2

    int-to-float v0, v0

    int-to-float v1, v3

    div-float/2addr v1, v6

    const v2, 0x3f6e147b    # 0.93f

    mul-float/2addr v1, v2

    mul-float/2addr v0, v1

    float-to-int v0, v0

    move v3, v4

    .line 526
    :cond_1
    iget-object v1, p0, Lcom/oneplus/volume/OpVolumeDialogImpl;->mRows:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oneplus/volume/OpVolumeDialogImpl$VolumeRow;

    .line 527
    iget-object v6, v2, Lcom/oneplus/volume/OpVolumeDialogImpl$VolumeRow;->view:Landroid/view/View;

    sget v8, Lcom/android/systemui/R$id;->volume_row_slider:I

    invoke-virtual {v6, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    .line 528
    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    .line 529
    iput v0, v8, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 530
    invoke-virtual {v6, v8}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 531
    iget-object v2, v2, Lcom/oneplus/volume/OpVolumeDialogImpl$VolumeRow;->view:Landroid/view/View;

    sget v6, Lcom/android/systemui/R$id;->volume_row_slider_frame:I

    invoke-virtual {v2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout;

    .line 532
    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    .line 533
    iput v0, v6, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 534
    invoke-virtual {v2, v6}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 535
    invoke-virtual {v2}, Landroid/widget/FrameLayout;->invalidate()V

    goto :goto_1

    .line 540
    :cond_2
    iget-object v0, p0, Lcom/oneplus/volume/OpVolumeDialogImpl;->mODICaptionsView:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/oneplus/volume/OpVolumeDialogImpl;->mDialogUpper:Landroid/view/ViewGroup;

    if-eqz v0, :cond_4

    iget-boolean v2, p0, Lcom/oneplus/volume/OpVolumeDialogImpl;->mOpForceExpandState:Z

    if-nez v2, :cond_4

    iget-boolean v2, p0, Lcom/oneplus/volume/OpVolumeDialogImpl;->mIsExpandAnimDone:Z

    if-eqz v2, :cond_4

    .line 542
    invoke-virtual {v0, v1, v1}, Landroid/view/ViewGroup;->measure(II)V

    .line 543
    iget-object v0, p0, Lcom/oneplus/volume/OpVolumeDialogImpl;->mDialogUpper:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v0

    if-le v3, v0, :cond_3

    .line 545
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mODICaptionsView odiHeight:"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " max:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v7, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v3, v0

    .line 549
    :cond_3
    iput v3, p0, Lcom/oneplus/volume/OpVolumeDialogImpl;->mODIViewHeight:I

    .line 551
    iget-object v0, p0, Lcom/oneplus/volume/OpVolumeDialogImpl;->mODICaptionsView:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iput v3, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 552
    iget-object v0, p0, Lcom/oneplus/volume/OpVolumeDialogImpl;->mDialogLower:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->invalidate()V

    .line 555
    :cond_4
    invoke-direct {p0}, Lcom/oneplus/volume/OpVolumeDialogImpl;->getSettingsView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 556
    invoke-direct {p0}, Lcom/oneplus/volume/OpVolumeDialogImpl;->getSettingsView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iput v4, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 558
    :cond_5
    invoke-direct {p0}, Lcom/oneplus/volume/OpVolumeDialogImpl;->getSettingsBackView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 559
    invoke-direct {p0}, Lcom/oneplus/volume/OpVolumeDialogImpl;->getSettingsBackView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iput v4, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 561
    :cond_6
    invoke-direct {p0}, Lcom/oneplus/volume/OpVolumeDialogImpl;->getSettingsOpSettingsView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 562
    invoke-direct {p0}, Lcom/oneplus/volume/OpVolumeDialogImpl;->getSettingsOpSettingsView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iput v4, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 565
    :cond_7
    iget-object v0, p0, Lcom/oneplus/volume/OpVolumeDialogImpl;->mRows:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_2
    if-ge v1, v0, :cond_9

    .line 567
    iget-object v2, p0, Lcom/oneplus/volume/OpVolumeDialogImpl;->mRows:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oneplus/volume/OpVolumeDialogImpl$VolumeRow;

    .line 568
    iget-object v2, v2, Lcom/oneplus/volume/OpVolumeDialogImpl$VolumeRow;->icon:Landroid/widget/ImageButton;

    if-eqz v2, :cond_8

    .line 569
    invoke-virtual {v2}, Landroid/widget/ImageButton;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup$MarginLayoutParams;

    iput v5, v2, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    :cond_8
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_9
    return-void
.end method

.method protected updateVolumeRowLayout(Landroid/content/res/Resources;)V
    .locals 9

    .line 444
    sget v0, Lcom/android/systemui/R$dimen;->op_volume_dialog_panel_width:I

    const/16 v1, 0x438

    invoke-static {p1, v0, v1}, Lcom/oneplus/util/OpUtils;->getDimensionPixelSize(Landroid/content/res/Resources;II)I

    move-result v0

    .line 445
    sget v2, Lcom/android/systemui/R$dimen;->op_volume_dialog_slider_width:I

    invoke-static {p1, v2, v1}, Lcom/oneplus/util/OpUtils;->getDimensionPixelSize(Landroid/content/res/Resources;II)I

    move-result v2

    .line 446
    sget v3, Lcom/android/systemui/R$dimen;->op_volume_dialog_slider_height:I

    invoke-static {p1, v3, v1}, Lcom/oneplus/util/OpUtils;->getDimensionPixelSize(Landroid/content/res/Resources;II)I

    move-result v3

    .line 447
    sget v4, Lcom/android/systemui/R$dimen;->op_volume_dialog_slider_margin_bottom:I

    invoke-static {p1, v4, v1}, Lcom/oneplus/util/OpUtils;->getDimensionPixelSize(Landroid/content/res/Resources;II)I

    move-result v4

    .line 448
    sget v5, Lcom/android/systemui/R$dimen;->op_volume_dialog_icon_size:I

    invoke-static {p1, v5, v1}, Lcom/oneplus/util/OpUtils;->getDimensionPixelSize(Landroid/content/res/Resources;II)I

    move-result v5

    .line 449
    sget v6, Lcom/android/systemui/R$dimen;->op_volume_dialog_row_margin_bottom:I

    invoke-static {p1, v6, v1}, Lcom/oneplus/util/OpUtils;->getDimensionPixelSize(Landroid/content/res/Resources;II)I

    move-result p1

    .line 451
    iget-object p0, p0, Lcom/oneplus/volume/OpVolumeDialogImpl;->mRows:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/volume/OpVolumeDialogImpl$VolumeRow;

    .line 452
    iget-object v6, v1, Lcom/oneplus/volume/OpVolumeDialogImpl$VolumeRow;->view:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    .line 453
    iput v0, v6, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 454
    iget-object v7, v1, Lcom/oneplus/volume/OpVolumeDialogImpl$VolumeRow;->view:Landroid/view/View;

    invoke-virtual {v7, v6}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 456
    iget-object v6, v1, Lcom/oneplus/volume/OpVolumeDialogImpl$VolumeRow;->view:Landroid/view/View;

    sget v7, Lcom/android/systemui/R$id;->volume_row_slider:I

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    .line 457
    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    .line 458
    iput v3, v7, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 459
    iput v2, v7, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 460
    invoke-virtual {v6, v7}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 462
    iget-object v6, v1, Lcom/oneplus/volume/OpVolumeDialogImpl$VolumeRow;->view:Landroid/view/View;

    sget v7, Lcom/android/systemui/R$id;->volume_row_slider_frame:I

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/FrameLayout;

    .line 463
    invoke-virtual {v6}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    check-cast v7, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 464
    iput v3, v7, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 465
    iput v2, v7, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    const/4 v8, 0x0

    .line 466
    invoke-virtual {v7, v8, v8, v8, v4}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 467
    invoke-virtual {v6, v7}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 469
    iget-object v6, v1, Lcom/oneplus/volume/OpVolumeDialogImpl$VolumeRow;->view:Landroid/view/View;

    sget v7, Lcom/android/systemui/R$id;->volume_row_icon:I

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageButton;

    .line 470
    invoke-virtual {v6}, Landroid/widget/ImageButton;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    check-cast v7, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 471
    iput v5, v7, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 472
    iput v5, v7, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    .line 473
    invoke-virtual {v7, v8, v8, v8, p1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 474
    invoke-virtual {v6, v7}, Landroid/widget/ImageButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 476
    iget-object v1, v1, Lcom/oneplus/volume/OpVolumeDialogImpl$VolumeRow;->view:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->invalidate()V

    goto :goto_0

    :cond_0
    return-void
.end method
