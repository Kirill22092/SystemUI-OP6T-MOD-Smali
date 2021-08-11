.class public final synthetic Lcom/oneplus/aod/utils/bitmoji/triggers/base/-$$Lambda$u-5f3jXsHJF4qlnXbdMxHvnd3m0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/oneplus/aod/utils/bitmoji/triggers/base/AudioTrigger;


# direct methods
.method public synthetic constructor <init>(Lcom/oneplus/aod/utils/bitmoji/triggers/base/AudioTrigger;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/oneplus/aod/utils/bitmoji/triggers/base/-$$Lambda$u-5f3jXsHJF4qlnXbdMxHvnd3m0;->f$0:Lcom/oneplus/aod/utils/bitmoji/triggers/base/AudioTrigger;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    iget-object p0, p0, Lcom/oneplus/aod/utils/bitmoji/triggers/base/-$$Lambda$u-5f3jXsHJF4qlnXbdMxHvnd3m0;->f$0:Lcom/oneplus/aod/utils/bitmoji/triggers/base/AudioTrigger;

    invoke-virtual {p0}, Lcom/oneplus/aod/utils/bitmoji/triggers/base/AudioTrigger;->checkStopInner()V

    return-void
.end method
