.class public final synthetic Lcom/android/systemui/doze/-$$Lambda$DozeSensors$CustomProximityCheck$9pIc7EqJWnwMe91o9UTr1WLuvZE;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/doze/DozeSensors$CustomProximityCheck;

.field public final synthetic f$1:Z


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/doze/DozeSensors$CustomProximityCheck;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/doze/-$$Lambda$DozeSensors$CustomProximityCheck$9pIc7EqJWnwMe91o9UTr1WLuvZE;->f$0:Lcom/android/systemui/doze/DozeSensors$CustomProximityCheck;

    iput-boolean p2, p0, Lcom/android/systemui/doze/-$$Lambda$DozeSensors$CustomProximityCheck$9pIc7EqJWnwMe91o9UTr1WLuvZE;->f$1:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/doze/-$$Lambda$DozeSensors$CustomProximityCheck$9pIc7EqJWnwMe91o9UTr1WLuvZE;->f$0:Lcom/android/systemui/doze/DozeSensors$CustomProximityCheck;

    iget-boolean p0, p0, Lcom/android/systemui/doze/-$$Lambda$DozeSensors$CustomProximityCheck$9pIc7EqJWnwMe91o9UTr1WLuvZE;->f$1:Z

    invoke-virtual {v0, p0}, Lcom/android/systemui/doze/DozeSensors$CustomProximityCheck;->lambda$onSensorChanged$0$DozeSensors$CustomProximityCheck(Z)V

    return-void
.end method
