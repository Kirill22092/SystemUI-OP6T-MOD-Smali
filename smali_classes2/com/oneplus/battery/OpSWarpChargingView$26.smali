.class Lcom/oneplus/battery/OpSWarpChargingView$26;
.super Ljava/lang/Object;
.source "OpSWarpChargingView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/battery/OpSWarpChargingView;->releaseAnimationList()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/battery/OpSWarpChargingView;


# direct methods
.method constructor <init>(Lcom/oneplus/battery/OpSWarpChargingView;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/battery/OpSWarpChargingView$26;->this$0:Lcom/oneplus/battery/OpSWarpChargingView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/oneplus/battery/OpSWarpChargingView$26;->this$0:Lcom/oneplus/battery/OpSWarpChargingView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/oneplus/battery/OpSWarpChargingView;->access$3402(Lcom/oneplus/battery/OpSWarpChargingView;Z)Z

    iget-object p0, p0, Lcom/oneplus/battery/OpSWarpChargingView$26;->this$0:Lcom/oneplus/battery/OpSWarpChargingView;

    invoke-static {p0, v1}, Lcom/oneplus/battery/OpSWarpChargingView;->access$3702(Lcom/oneplus/battery/OpSWarpChargingView;Z)Z

    return-void
.end method
