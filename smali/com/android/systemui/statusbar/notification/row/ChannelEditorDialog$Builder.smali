.class public final Lcom/android/systemui/statusbar/notification/row/ChannelEditorDialog$Builder;
.super Ljava/lang/Object;
.source "ChannelEditorDialogController.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/notification/row/ChannelEditorDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private context:Landroid/content/Context;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final build()Lcom/android/systemui/statusbar/notification/row/ChannelEditorDialog;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, Lcom/android/systemui/statusbar/notification/row/ChannelEditorDialog;

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/ChannelEditorDialog$Builder;->context:Landroid/content/Context;

    if-eqz p0, :cond_0

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/notification/row/ChannelEditorDialog;-><init>(Landroid/content/Context;)V

    return-object v0

    :cond_0
    const-string p0, "context"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public final setContext(Landroid/content/Context;)Lcom/android/systemui/statusbar/notification/row/ChannelEditorDialog$Builder;
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/row/ChannelEditorDialog$Builder;->context:Landroid/content/Context;

    return-object p0
.end method
