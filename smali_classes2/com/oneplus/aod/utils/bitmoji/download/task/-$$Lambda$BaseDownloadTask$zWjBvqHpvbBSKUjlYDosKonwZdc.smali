.class public final synthetic Lcom/oneplus/aod/utils/bitmoji/download/task/-$$Lambda$BaseDownloadTask$zWjBvqHpvbBSKUjlYDosKonwZdc;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/oneplus/aod/utils/bitmoji/download/task/BaseDownloadTask;

.field public final synthetic f$1:Z


# direct methods
.method public synthetic constructor <init>(Lcom/oneplus/aod/utils/bitmoji/download/task/BaseDownloadTask;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/oneplus/aod/utils/bitmoji/download/task/-$$Lambda$BaseDownloadTask$zWjBvqHpvbBSKUjlYDosKonwZdc;->f$0:Lcom/oneplus/aod/utils/bitmoji/download/task/BaseDownloadTask;

    iput-boolean p2, p0, Lcom/oneplus/aod/utils/bitmoji/download/task/-$$Lambda$BaseDownloadTask$zWjBvqHpvbBSKUjlYDosKonwZdc;->f$1:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/oneplus/aod/utils/bitmoji/download/task/-$$Lambda$BaseDownloadTask$zWjBvqHpvbBSKUjlYDosKonwZdc;->f$0:Lcom/oneplus/aod/utils/bitmoji/download/task/BaseDownloadTask;

    iget-boolean p0, p0, Lcom/oneplus/aod/utils/bitmoji/download/task/-$$Lambda$BaseDownloadTask$zWjBvqHpvbBSKUjlYDosKonwZdc;->f$1:Z

    invoke-virtual {v0, p0}, Lcom/oneplus/aod/utils/bitmoji/download/task/BaseDownloadTask;->lambda$onDownloadDone$0$BaseDownloadTask(Z)V

    return-void
.end method
