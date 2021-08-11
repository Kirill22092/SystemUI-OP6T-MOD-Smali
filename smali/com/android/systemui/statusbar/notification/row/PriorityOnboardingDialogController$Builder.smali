.class public final Lcom/android/systemui/statusbar/notification/row/PriorityOnboardingDialogController$Builder;
.super Ljava/lang/Object;
.source "PriorityOnboardingDialogController.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/notification/row/PriorityOnboardingDialogController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private badge:Landroid/graphics/drawable/Drawable;

.field private context:Landroid/content/Context;

.field private icon:Landroid/graphics/drawable/Drawable;

.field private ignoresDnd:Z

.field private onConversationSettingsClickListener:Lcom/android/systemui/statusbar/notification/row/NotificationConversationInfo$OnConversationSettingsClickListener;

.field private showAsBubble:Z

.field private view:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final build()Lcom/android/systemui/statusbar/notification/row/PriorityOnboardingDialogController;
    .locals 9
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v8, Lcom/android/systemui/statusbar/notification/row/PriorityOnboardingDialogController;

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/row/PriorityOnboardingDialogController$Builder;->view:Landroid/view/View;

    const/4 v0, 0x0

    if-eqz v1, :cond_4

    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/row/PriorityOnboardingDialogController$Builder;->context:Landroid/content/Context;

    if-eqz v2, :cond_3

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/notification/row/PriorityOnboardingDialogController$Builder;->ignoresDnd:Z

    iget-boolean v4, p0, Lcom/android/systemui/statusbar/notification/row/PriorityOnboardingDialogController$Builder;->showAsBubble:Z

    iget-object v5, p0, Lcom/android/systemui/statusbar/notification/row/PriorityOnboardingDialogController$Builder;->icon:Landroid/graphics/drawable/Drawable;

    if-eqz v5, :cond_2

    iget-object v6, p0, Lcom/android/systemui/statusbar/notification/row/PriorityOnboardingDialogController$Builder;->onConversationSettingsClickListener:Lcom/android/systemui/statusbar/notification/row/NotificationConversationInfo$OnConversationSettingsClickListener;

    if-eqz v6, :cond_1

    iget-object v7, p0, Lcom/android/systemui/statusbar/notification/row/PriorityOnboardingDialogController$Builder;->badge:Landroid/graphics/drawable/Drawable;

    if-eqz v7, :cond_0

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Lcom/android/systemui/statusbar/notification/row/PriorityOnboardingDialogController;-><init>(Landroid/view/View;Landroid/content/Context;ZZLandroid/graphics/drawable/Drawable;Lcom/android/systemui/statusbar/notification/row/NotificationConversationInfo$OnConversationSettingsClickListener;Landroid/graphics/drawable/Drawable;)V

    return-object v8

    :cond_0
    const-string p0, "badge"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v0

    :cond_1
    const-string p0, "onConversationSettingsClickListener"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v0

    :cond_2
    const-string p0, "icon"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v0

    :cond_3
    const-string p0, "context"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v0

    :cond_4
    const-string/jumbo p0, "view"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v0
.end method

.method public final setBadge(Landroid/graphics/drawable/Drawable;)Lcom/android/systemui/statusbar/notification/row/PriorityOnboardingDialogController$Builder;
    .locals 1
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "badge"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/row/PriorityOnboardingDialogController$Builder;->badge:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method public final setContext(Landroid/content/Context;)Lcom/android/systemui/statusbar/notification/row/PriorityOnboardingDialogController$Builder;
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "c"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/row/PriorityOnboardingDialogController$Builder;->context:Landroid/content/Context;

    return-object p0
.end method

.method public final setIcon(Landroid/graphics/drawable/Drawable;)Lcom/android/systemui/statusbar/notification/row/PriorityOnboardingDialogController$Builder;
    .locals 1
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "draw"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/row/PriorityOnboardingDialogController$Builder;->icon:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method public final setIgnoresDnd(Z)Lcom/android/systemui/statusbar/notification/row/PriorityOnboardingDialogController$Builder;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/notification/row/PriorityOnboardingDialogController$Builder;->ignoresDnd:Z

    return-object p0
.end method

.method public final setOnSettingsClick(Lcom/android/systemui/statusbar/notification/row/NotificationConversationInfo$OnConversationSettingsClickListener;)Lcom/android/systemui/statusbar/notification/row/PriorityOnboardingDialogController$Builder;
    .locals 1
    .param p1    # Lcom/android/systemui/statusbar/notification/row/NotificationConversationInfo$OnConversationSettingsClickListener;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "onClick"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/row/PriorityOnboardingDialogController$Builder;->onConversationSettingsClickListener:Lcom/android/systemui/statusbar/notification/row/NotificationConversationInfo$OnConversationSettingsClickListener;

    return-object p0
.end method

.method public final setShowsAsBubble(Z)Lcom/android/systemui/statusbar/notification/row/PriorityOnboardingDialogController$Builder;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/notification/row/PriorityOnboardingDialogController$Builder;->showAsBubble:Z

    return-object p0
.end method

.method public final setView(Landroid/view/View;)Lcom/android/systemui/statusbar/notification/row/PriorityOnboardingDialogController$Builder;
    .locals 1
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string/jumbo v0, "v"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/row/PriorityOnboardingDialogController$Builder;->view:Landroid/view/View;

    return-object p0
.end method
