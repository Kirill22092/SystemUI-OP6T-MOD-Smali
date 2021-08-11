.class public final synthetic Lcom/oneplus/aod/utils/bitmoji/triggers/-$$Lambda$PhoneTrigger$UpdateMonitorCallback$qXnYSJ-UVsbnxgzzDFfqUantRsE;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/oneplus/aod/utils/bitmoji/triggers/PhoneTrigger$UpdateMonitorCallback;

.field public final synthetic f$1:Z


# direct methods
.method public synthetic constructor <init>(Lcom/oneplus/aod/utils/bitmoji/triggers/PhoneTrigger$UpdateMonitorCallback;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/oneplus/aod/utils/bitmoji/triggers/-$$Lambda$PhoneTrigger$UpdateMonitorCallback$qXnYSJ-UVsbnxgzzDFfqUantRsE;->f$0:Lcom/oneplus/aod/utils/bitmoji/triggers/PhoneTrigger$UpdateMonitorCallback;

    iput-boolean p2, p0, Lcom/oneplus/aod/utils/bitmoji/triggers/-$$Lambda$PhoneTrigger$UpdateMonitorCallback$qXnYSJ-UVsbnxgzzDFfqUantRsE;->f$1:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/oneplus/aod/utils/bitmoji/triggers/-$$Lambda$PhoneTrigger$UpdateMonitorCallback$qXnYSJ-UVsbnxgzzDFfqUantRsE;->f$0:Lcom/oneplus/aod/utils/bitmoji/triggers/PhoneTrigger$UpdateMonitorCallback;

    iget-boolean p0, p0, Lcom/oneplus/aod/utils/bitmoji/triggers/-$$Lambda$PhoneTrigger$UpdateMonitorCallback$qXnYSJ-UVsbnxgzzDFfqUantRsE;->f$1:Z

    invoke-virtual {v0, p0}, Lcom/oneplus/aod/utils/bitmoji/triggers/PhoneTrigger$UpdateMonitorCallback;->lambda$onPhoneStateChanged$0$PhoneTrigger$UpdateMonitorCallback(Z)V

    return-void
.end method
