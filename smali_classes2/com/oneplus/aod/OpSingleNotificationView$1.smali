.class Lcom/oneplus/aod/OpSingleNotificationView$1;
.super Landroid/os/Handler;
.source "OpSingleNotificationView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/aod/OpSingleNotificationView;->initHandler()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/aod/OpSingleNotificationView;


# direct methods
.method constructor <init>(Lcom/oneplus/aod/OpSingleNotificationView;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/aod/OpSingleNotificationView$1;->this$0:Lcom/oneplus/aod/OpSingleNotificationView;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    iget-object p0, p0, Lcom/oneplus/aod/OpSingleNotificationView$1;->this$0:Lcom/oneplus/aod/OpSingleNotificationView;

    invoke-static {p0, p1}, Lcom/oneplus/aod/OpSingleNotificationView;->access$000(Lcom/oneplus/aod/OpSingleNotificationView;Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V

    :goto_0
    return-void
.end method
