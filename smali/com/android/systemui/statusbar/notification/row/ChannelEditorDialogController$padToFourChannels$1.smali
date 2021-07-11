.class final Lcom/android/systemui/statusbar/notification/row/ChannelEditorDialogController$padToFourChannels$1;
.super Lkotlin/jvm/internal/Lambda;
.source "ChannelEditorDialogController.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/notification/row/ChannelEditorDialogController;->padToFourChannels(Ljava/util/Set;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Landroid/app/NotificationChannel;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/notification/row/ChannelEditorDialogController;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/notification/row/ChannelEditorDialogController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/row/ChannelEditorDialogController$padToFourChannels$1;->this$0:Lcom/android/systemui/statusbar/notification/row/ChannelEditorDialogController;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 74
    check-cast p1, Landroid/app/NotificationChannel;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/notification/row/ChannelEditorDialogController$padToFourChannels$1;->invoke(Landroid/app/NotificationChannel;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public final invoke(Landroid/app/NotificationChannel;)Z
    .locals 1
    .param p1    # Landroid/app/NotificationChannel;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 165
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/ChannelEditorDialogController$padToFourChannels$1;->this$0:Lcom/android/systemui/statusbar/notification/row/ChannelEditorDialogController;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ChannelEditorDialogController;->getPaddedChannels$packages__apps__OPSystemUI__android_common__OPSystemUI_core()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method
