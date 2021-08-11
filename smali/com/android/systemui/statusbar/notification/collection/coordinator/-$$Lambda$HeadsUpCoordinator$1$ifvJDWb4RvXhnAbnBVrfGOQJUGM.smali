.class public final synthetic Lcom/android/systemui/statusbar/notification/collection/coordinator/-$$Lambda$HeadsUpCoordinator$1$ifvJDWb4RvXhnAbnBVrfGOQJUGM;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/systemui/statusbar/notification/row/NotifBindPipeline$BindCallback;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/statusbar/notification/collection/coordinator/HeadsUpCoordinator;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/statusbar/notification/collection/coordinator/HeadsUpCoordinator;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/-$$Lambda$HeadsUpCoordinator$1$ifvJDWb4RvXhnAbnBVrfGOQJUGM;->f$0:Lcom/android/systemui/statusbar/notification/collection/coordinator/HeadsUpCoordinator;

    return-void
.end method


# virtual methods
.method public final onBindFinished(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/-$$Lambda$HeadsUpCoordinator$1$ifvJDWb4RvXhnAbnBVrfGOQJUGM;->f$0:Lcom/android/systemui/statusbar/notification/collection/coordinator/HeadsUpCoordinator;

    invoke-static {p0, p1}, Lcom/android/systemui/statusbar/notification/collection/coordinator/HeadsUpCoordinator$1;->lambda$onEntryAdded$0(Lcom/android/systemui/statusbar/notification/collection/coordinator/HeadsUpCoordinator;Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V

    return-void
.end method
