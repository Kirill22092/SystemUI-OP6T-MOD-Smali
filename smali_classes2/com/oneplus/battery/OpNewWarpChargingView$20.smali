.class Lcom/oneplus/battery/OpNewWarpChargingView$20;
.super Ljava/lang/Object;
.source "OpNewWarpChargingView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/battery/OpNewWarpChargingView;->releaseAnimationList()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/battery/OpNewWarpChargingView;


# direct methods
.method constructor <init>(Lcom/oneplus/battery/OpNewWarpChargingView;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/battery/OpNewWarpChargingView$20;->this$0:Lcom/oneplus/battery/OpNewWarpChargingView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/oneplus/battery/OpNewWarpChargingView$20;->this$0:Lcom/oneplus/battery/OpNewWarpChargingView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/oneplus/battery/OpNewWarpChargingView;->access$2902(Lcom/oneplus/battery/OpNewWarpChargingView;Z)Z

    iget-object p0, p0, Lcom/oneplus/battery/OpNewWarpChargingView$20;->this$0:Lcom/oneplus/battery/OpNewWarpChargingView;

    invoke-static {p0, v1}, Lcom/oneplus/battery/OpNewWarpChargingView;->access$3202(Lcom/oneplus/battery/OpNewWarpChargingView;Z)Z

    return-void
.end method
