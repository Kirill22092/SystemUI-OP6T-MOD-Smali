.class Lcom/oneplus/aod/OpAodBatteryStatusView$1;
.super Landroid/os/Handler;
.source "OpAodBatteryStatusView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/aod/OpAodBatteryStatusView;->initHandler()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/aod/OpAodBatteryStatusView;


# direct methods
.method constructor <init>(Lcom/oneplus/aod/OpAodBatteryStatusView;Landroid/os/Looper;)V
    .locals 0

    .line 44
    iput-object p1, p0, Lcom/oneplus/aod/OpAodBatteryStatusView$1;->this$0:Lcom/oneplus/aod/OpAodBatteryStatusView;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    .line 47
    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 48
    iget-object p0, p0, Lcom/oneplus/aod/OpAodBatteryStatusView$1;->this$0:Lcom/oneplus/aod/OpAodBatteryStatusView;

    invoke-static {p0}, Lcom/oneplus/aod/OpAodBatteryStatusView;->access$000(Lcom/oneplus/aod/OpAodBatteryStatusView;)V

    :cond_0
    return-void
.end method
