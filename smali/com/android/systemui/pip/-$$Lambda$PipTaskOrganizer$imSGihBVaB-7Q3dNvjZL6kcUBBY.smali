.class public final synthetic Lcom/android/systemui/pip/-$$Lambda$PipTaskOrganizer$imSGihBVaB-7Q3dNvjZL6kcUBBY;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/pip/PipTaskOrganizer;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/pip/PipTaskOrganizer;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/pip/-$$Lambda$PipTaskOrganizer$imSGihBVaB-7Q3dNvjZL6kcUBBY;->f$0:Lcom/android/systemui/pip/PipTaskOrganizer;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/pip/-$$Lambda$PipTaskOrganizer$imSGihBVaB-7Q3dNvjZL6kcUBBY;->f$0:Lcom/android/systemui/pip/PipTaskOrganizer;

    invoke-virtual {p0}, Lcom/android/systemui/pip/PipTaskOrganizer;->lambda$removePip$1$PipTaskOrganizer()V

    return-void
.end method
