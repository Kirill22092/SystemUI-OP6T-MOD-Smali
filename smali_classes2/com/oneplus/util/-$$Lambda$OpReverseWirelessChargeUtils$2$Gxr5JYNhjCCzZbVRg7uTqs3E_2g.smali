.class public final synthetic Lcom/oneplus/util/-$$Lambda$OpReverseWirelessChargeUtils$2$Gxr5JYNhjCCzZbVRg7uTqs3E_2g;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroid/content/Context;


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/oneplus/util/-$$Lambda$OpReverseWirelessChargeUtils$2$Gxr5JYNhjCCzZbVRg7uTqs3E_2g;->f$0:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    iget-object p0, p0, Lcom/oneplus/util/-$$Lambda$OpReverseWirelessChargeUtils$2$Gxr5JYNhjCCzZbVRg7uTqs3E_2g;->f$0:Landroid/content/Context;

    invoke-static {p0}, Lcom/oneplus/util/OpReverseWirelessChargeUtils$2;->lambda$handleValueChanged$0(Landroid/content/Context;)V

    return-void
.end method
