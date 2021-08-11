.class public final synthetic Lcom/android/systemui/statusbar/notification/collection/coordinator/-$$Lambda$AppOpsCoordinator$2$QL7e9QZrONYPm8OKjbOLeImENQ4;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/statusbar/notification/collection/coordinator/AppOpsCoordinator$2;

.field public final synthetic f$1:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/statusbar/notification/collection/coordinator/AppOpsCoordinator$2;Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/-$$Lambda$AppOpsCoordinator$2$QL7e9QZrONYPm8OKjbOLeImENQ4;->f$0:Lcom/android/systemui/statusbar/notification/collection/coordinator/AppOpsCoordinator$2;

    iput-object p2, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/-$$Lambda$AppOpsCoordinator$2$QL7e9QZrONYPm8OKjbOLeImENQ4;->f$1:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/-$$Lambda$AppOpsCoordinator$2$QL7e9QZrONYPm8OKjbOLeImENQ4;->f$0:Lcom/android/systemui/statusbar/notification/collection/coordinator/AppOpsCoordinator$2;

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/-$$Lambda$AppOpsCoordinator$2$QL7e9QZrONYPm8OKjbOLeImENQ4;->f$1:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/notification/collection/coordinator/AppOpsCoordinator$2;->lambda$shouldExtendLifetime$0$AppOpsCoordinator$2(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V

    return-void
.end method
