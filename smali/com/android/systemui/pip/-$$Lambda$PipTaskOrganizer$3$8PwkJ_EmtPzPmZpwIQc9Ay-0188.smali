.class public final synthetic Lcom/android/systemui/pip/-$$Lambda$PipTaskOrganizer$3$8PwkJ_EmtPzPmZpwIQc9Ay-0188;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/pip/PipTaskOrganizer$3;

.field public final synthetic f$1:Landroid/graphics/Rect;

.field public final synthetic f$2:J


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/pip/PipTaskOrganizer$3;Landroid/graphics/Rect;J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/pip/-$$Lambda$PipTaskOrganizer$3$8PwkJ_EmtPzPmZpwIQc9Ay-0188;->f$0:Lcom/android/systemui/pip/PipTaskOrganizer$3;

    iput-object p2, p0, Lcom/android/systemui/pip/-$$Lambda$PipTaskOrganizer$3$8PwkJ_EmtPzPmZpwIQc9Ay-0188;->f$1:Landroid/graphics/Rect;

    iput-wide p3, p0, Lcom/android/systemui/pip/-$$Lambda$PipTaskOrganizer$3$8PwkJ_EmtPzPmZpwIQc9Ay-0188;->f$2:J

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/pip/-$$Lambda$PipTaskOrganizer$3$8PwkJ_EmtPzPmZpwIQc9Ay-0188;->f$0:Lcom/android/systemui/pip/PipTaskOrganizer$3;

    iget-object v1, p0, Lcom/android/systemui/pip/-$$Lambda$PipTaskOrganizer$3$8PwkJ_EmtPzPmZpwIQc9Ay-0188;->f$1:Landroid/graphics/Rect;

    iget-wide v2, p0, Lcom/android/systemui/pip/-$$Lambda$PipTaskOrganizer$3$8PwkJ_EmtPzPmZpwIQc9Ay-0188;->f$2:J

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/systemui/pip/PipTaskOrganizer$3;->lambda$onTransactionReady$0$PipTaskOrganizer$3(Landroid/graphics/Rect;J)V

    return-void
.end method
