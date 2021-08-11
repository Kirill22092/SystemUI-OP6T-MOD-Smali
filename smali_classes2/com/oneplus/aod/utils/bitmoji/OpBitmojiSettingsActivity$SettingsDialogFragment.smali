.class public final Lcom/oneplus/aod/utils/bitmoji/OpBitmojiSettingsActivity$SettingsDialogFragment;
.super Landroidx/fragment/app/DialogFragment;
.source "OpBitmojiSettingsActivity.kt"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/aod/utils/bitmoji/OpBitmojiSettingsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SettingsDialogFragment"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/aod/utils/bitmoji/OpBitmojiSettingsActivity$SettingsDialogFragment$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/oneplus/aod/utils/bitmoji/OpBitmojiSettingsActivity$SettingsDialogFragment$Companion;

.field private static final STICKER_SIZE:J = 0x1a81274L


# instance fields
.field private mIsFirstApply:Z

.field private mMobileButton:Landroid/widget/CheckedTextView;

.field private mUseMobile:Z

.field private mWifiButton:Landroid/widget/CheckedTextView;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/oneplus/aod/utils/bitmoji/OpBitmojiSettingsActivity$SettingsDialogFragment$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/oneplus/aod/utils/bitmoji/OpBitmojiSettingsActivity$SettingsDialogFragment$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/oneplus/aod/utils/bitmoji/OpBitmojiSettingsActivity$SettingsDialogFragment;->Companion:Lcom/oneplus/aod/utils/bitmoji/OpBitmojiSettingsActivity$SettingsDialogFragment$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroidx/fragment/app/DialogFragment;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oneplus/aod/utils/bitmoji/OpBitmojiSettingsActivity$SettingsDialogFragment;->mIsFirstApply:Z

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "v"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    sget v0, Lcom/android/systemui/R$id;->mobile:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne p1, v0, :cond_0

    move p1, v2

    goto :goto_0

    :cond_0
    sget v0, Lcom/android/systemui/R$id;->wifiOnly:I

    if-ne p1, v0, :cond_8

    move p1, v1

    :goto_0
    iget-boolean v0, p0, Lcom/oneplus/aod/utils/bitmoji/OpBitmojiSettingsActivity$SettingsDialogFragment;->mUseMobile:Z

    if-eq v0, p1, :cond_5

    iget-object v0, p0, Lcom/oneplus/aod/utils/bitmoji/OpBitmojiSettingsActivity$SettingsDialogFragment;->mMobileButton:Landroid/widget/CheckedTextView;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    :cond_1
    iget-object v0, p0, Lcom/oneplus/aod/utils/bitmoji/OpBitmojiSettingsActivity$SettingsDialogFragment;->mWifiButton:Landroid/widget/CheckedTextView;

    if-eqz v0, :cond_2

    xor-int/lit8 v3, p1, 0x1

    invoke-virtual {v0, v3}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    :cond_2
    invoke-static {}, Lcom/oneplus/aod/utils/bitmoji/OpBitmojiHelper;->getInstance()Lcom/oneplus/aod/utils/bitmoji/OpBitmojiHelper;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/oneplus/aod/utils/bitmoji/OpBitmojiHelper;->setDownloadViaMobile(Z)V

    iput-boolean p1, p0, Lcom/oneplus/aod/utils/bitmoji/OpBitmojiSettingsActivity$SettingsDialogFragment;->mUseMobile:Z

    sget-object p1, Lcom/oneplus/aod/utils/bitmoji/MdmLogger;->Companion:Lcom/oneplus/aod/utils/bitmoji/MdmLogger$Companion;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_4

    const-string v3, "getContext()!!"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lcom/oneplus/aod/utils/bitmoji/MdmLogger$Companion;->getInstance(Landroid/content/Context;)Lcom/oneplus/aod/utils/bitmoji/MdmLogger;

    move-result-object p1

    iget-boolean v0, p0, Lcom/oneplus/aod/utils/bitmoji/OpBitmojiSettingsActivity$SettingsDialogFragment;->mUseMobile:Z

    if-eqz v0, :cond_3

    goto :goto_1

    :cond_3
    const/4 v2, 0x2

    :goto_1
    invoke-virtual {p1, v2}, Lcom/oneplus/aod/utils/bitmoji/MdmLogger;->logNetworkOptionChooseEvent(I)V

    goto :goto_2

    :cond_4
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    const/4 p0, 0x0

    throw p0

    :cond_5
    :goto_2
    iget-boolean p1, p0, Lcom/oneplus/aod/utils/bitmoji/OpBitmojiSettingsActivity$SettingsDialogFragment;->mIsFirstApply:Z

    if-eqz p1, :cond_6

    invoke-static {}, Lcom/oneplus/aod/utils/bitmoji/OpBitmojiHelper;->getInstance()Lcom/oneplus/aod/utils/bitmoji/OpBitmojiHelper;

    move-result-object p1

    invoke-virtual {p1}, Lcom/oneplus/aod/utils/bitmoji/OpBitmojiHelper;->firstApply()V

    invoke-static {}, Lcom/oneplus/aod/utils/bitmoji/OpBitmojiHelper;->getInstance()Lcom/oneplus/aod/utils/bitmoji/OpBitmojiHelper;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/oneplus/aod/utils/bitmoji/OpBitmojiHelper;->startDownloading(Z)V

    :cond_6
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    if-eqz p1, :cond_7

    const/4 v0, -0x1

    invoke-virtual {p1, v0}, Landroid/app/Activity;->setResult(I)V

    :cond_7
    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->dismiss()V

    :cond_8
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 9
    .param p1    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-static {}, Lcom/oneplus/util/ThemeColorUtils;->getCurrentTheme()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    sget p1, Lcom/android/systemui/R$style;->oneplus_theme_dialog_dark:I

    goto :goto_0

    :cond_0
    sget p1, Lcom/android/systemui/R$style;->oneplus_theme_dialog_light:I

    :goto_0
    new-instance v1, Landroid/view/ContextThemeWrapper;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v1, v2, p1}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    sget v2, Lcom/android/systemui/R$layout;->op_bitmoji_settings_content:I

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    sget v2, Lcom/android/systemui/R$id;->bitmoji_settings_msg:I

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget-wide v5, Lcom/oneplus/aod/utils/bitmoji/OpBitmojiSettingsActivity$SettingsDialogFragment;->STICKER_SIZE:J

    const/4 v7, 0x0

    invoke-static {v4, v5, v6, v7}, Landroid/text/format/Formatter;->formatBytes(Landroid/content/res/Resources;JI)Landroid/text/format/Formatter$BytesResult;

    move-result-object v4

    if-eqz v2, :cond_1

    sget v5, Lcom/android/systemui/R$string;->op_bitmoji_settings_info:I

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    iget-object v8, v4, Landroid/text/format/Formatter$BytesResult;->value:Ljava/lang/String;

    aput-object v8, v6, v7

    iget-object v4, v4, Landroid/text/format/Formatter$BytesResult;->units:Ljava/lang/String;

    aput-object v4, v6, v0

    invoke-virtual {p0, v5, v6}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    invoke-static {}, Lcom/oneplus/aod/utils/bitmoji/OpBitmojiHelper;->getInstance()Lcom/oneplus/aod/utils/bitmoji/OpBitmojiHelper;

    move-result-object v2

    invoke-virtual {v2}, Lcom/oneplus/aod/utils/bitmoji/OpBitmojiHelper;->isApplyFirstTime()Z

    move-result v2

    iput-boolean v2, p0, Lcom/oneplus/aod/utils/bitmoji/OpBitmojiSettingsActivity$SettingsDialogFragment;->mIsFirstApply:Z

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/oneplus/aod/utils/bitmoji/OpBitmojiHelper;->isDownloadViaMobile(Landroid/content/Context;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/oneplus/aod/utils/bitmoji/OpBitmojiSettingsActivity$SettingsDialogFragment;->mUseMobile:Z

    sget v2, Lcom/android/systemui/R$id;->mobile:I

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckedTextView;

    iput-object v2, p0, Lcom/oneplus/aod/utils/bitmoji/OpBitmojiSettingsActivity$SettingsDialogFragment;->mMobileButton:Landroid/widget/CheckedTextView;

    sget v2, Lcom/android/systemui/R$id;->wifiOnly:I

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckedTextView;

    iput-object v2, p0, Lcom/oneplus/aod/utils/bitmoji/OpBitmojiSettingsActivity$SettingsDialogFragment;->mWifiButton:Landroid/widget/CheckedTextView;

    iget-boolean v2, p0, Lcom/oneplus/aod/utils/bitmoji/OpBitmojiSettingsActivity$SettingsDialogFragment;->mIsFirstApply:Z

    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/oneplus/aod/utils/bitmoji/OpBitmojiSettingsActivity$SettingsDialogFragment;->mMobileButton:Landroid/widget/CheckedTextView;

    if-eqz v2, :cond_2

    iget-boolean v4, p0, Lcom/oneplus/aod/utils/bitmoji/OpBitmojiSettingsActivity$SettingsDialogFragment;->mUseMobile:Z

    invoke-virtual {v2, v4}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    :cond_2
    iget-object v2, p0, Lcom/oneplus/aod/utils/bitmoji/OpBitmojiSettingsActivity$SettingsDialogFragment;->mWifiButton:Landroid/widget/CheckedTextView;

    if-eqz v2, :cond_3

    iget-boolean v4, p0, Lcom/oneplus/aod/utils/bitmoji/OpBitmojiSettingsActivity$SettingsDialogFragment;->mUseMobile:Z

    xor-int/2addr v4, v0

    invoke-virtual {v2, v4}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    :cond_3
    iget-object v2, p0, Lcom/oneplus/aod/utils/bitmoji/OpBitmojiSettingsActivity$SettingsDialogFragment;->mMobileButton:Landroid/widget/CheckedTextView;

    if-eqz v2, :cond_4

    invoke-virtual {v2, p0}, Landroid/widget/CheckedTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_4
    iget-object v2, p0, Lcom/oneplus/aod/utils/bitmoji/OpBitmojiSettingsActivity$SettingsDialogFragment;->mWifiButton:Landroid/widget/CheckedTextView;

    if-eqz v2, :cond_5

    invoke-virtual {v2, p0}, Landroid/widget/CheckedTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_5
    new-instance v2, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-direct {v2, v1}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, p1}, Landroidx/appcompat/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroidx/appcompat/app/AlertDialog$Builder;

    const/high16 p1, 0x1040000

    invoke-virtual {v2, p1, v3}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-virtual {v2}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p1

    const-string v1, "builder.create()"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Landroidx/appcompat/app/AlertDialog;->setShowInBottom(Z)V

    iget-boolean v0, p0, Lcom/oneplus/aod/utils/bitmoji/OpBitmojiSettingsActivity$SettingsDialogFragment;->mIsFirstApply:Z

    const-string v1, "getContext()!!"

    if-eqz v0, :cond_7

    invoke-virtual {p0, v7}, Landroidx/fragment/app/DialogFragment;->setCancelable(Z)V

    invoke-virtual {p1, v7}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    sget-object v0, Lcom/oneplus/aod/utils/bitmoji/MdmLogger;->Companion:Lcom/oneplus/aod/utils/bitmoji/MdmLogger$Companion;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    if-eqz p0, :cond_6

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Lcom/oneplus/aod/utils/bitmoji/MdmLogger$Companion;->getInstance(Landroid/content/Context;)Lcom/oneplus/aod/utils/bitmoji/MdmLogger;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oneplus/aod/utils/bitmoji/MdmLogger;->logNetworkOptionFirstShownEvent()V

    goto :goto_1

    :cond_6
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    throw v3

    :cond_7
    sget-object v0, Lcom/oneplus/aod/utils/bitmoji/MdmLogger;->Companion:Lcom/oneplus/aod/utils/bitmoji/MdmLogger$Companion;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    if-eqz p0, :cond_8

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Lcom/oneplus/aod/utils/bitmoji/MdmLogger$Companion;->getInstance(Landroid/content/Context;)Lcom/oneplus/aod/utils/bitmoji/MdmLogger;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oneplus/aod/utils/bitmoji/MdmLogger;->logNetworkOptionClickEvent()V

    :goto_1
    return-object p1

    :cond_8
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    throw v3
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1
    .param p1    # Landroid/content/DialogInterface;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "dialog"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1}, Landroidx/fragment/app/DialogFragment;->onDismiss(Landroid/content/DialogInterface;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :cond_0
    return-void
.end method
