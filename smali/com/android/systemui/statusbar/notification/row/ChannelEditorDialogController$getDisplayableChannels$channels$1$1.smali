.class final Lcom/android/systemui/statusbar/notification/row/ChannelEditorDialogController$getDisplayableChannels$channels$1$1;
.super Lkotlin/jvm/internal/Lambda;
.source "ChannelEditorDialogController.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/notification/row/ChannelEditorDialogController$getDisplayableChannels$channels$1;->invoke(Landroid/app/NotificationChannelGroup;)Lkotlin/sequences/Sequence;
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


# static fields
.field public static final INSTANCE:Lcom/android/systemui/statusbar/notification/row/ChannelEditorDialogController$getDisplayableChannels$channels$1$1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/systemui/statusbar/notification/row/ChannelEditorDialogController$getDisplayableChannels$channels$1$1;

    invoke-direct {v0}, Lcom/android/systemui/statusbar/notification/row/ChannelEditorDialogController$getDisplayableChannels$channels$1$1;-><init>()V

    sput-object v0, Lcom/android/systemui/statusbar/notification/row/ChannelEditorDialogController$getDisplayableChannels$channels$1$1;->INSTANCE:Lcom/android/systemui/statusbar/notification/row/ChannelEditorDialogController$getDisplayableChannels$channels$1$1;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 74
    check-cast p1, Landroid/app/NotificationChannel;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/notification/row/ChannelEditorDialogController$getDisplayableChannels$channels$1$1;->invoke(Landroid/app/NotificationChannel;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public final invoke(Landroid/app/NotificationChannel;)Z
    .locals 0

    const-string p0, "channel"

    .line 186
    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/app/NotificationChannel;->isImportanceLockedByOEM()Z

    move-result p0

    if-nez p0, :cond_1

    invoke-virtual {p1}, Landroid/app/NotificationChannel;->getImportance()I

    move-result p0

    if-eqz p0, :cond_1

    invoke-virtual {p1}, Landroid/app/NotificationChannel;->isImportanceLockedByCriticalDeviceFunction()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method
