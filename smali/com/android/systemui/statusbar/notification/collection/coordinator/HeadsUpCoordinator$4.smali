.class Lcom/android/systemui/statusbar/notification/collection/coordinator/HeadsUpCoordinator$4;
.super Lcom/android/systemui/statusbar/notification/collection/listbuilder/pluggable/NotifSection;
.source "HeadsUpCoordinator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/notification/collection/coordinator/HeadsUpCoordinator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/notification/collection/coordinator/HeadsUpCoordinator;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/notification/collection/coordinator/HeadsUpCoordinator;Ljava/lang/String;)V
    .locals 0

    .line 207
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/HeadsUpCoordinator$4;->this$0:Lcom/android/systemui/statusbar/notification/collection/coordinator/HeadsUpCoordinator;

    invoke-direct {p0, p2}, Lcom/android/systemui/statusbar/notification/collection/listbuilder/pluggable/NotifSection;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public isInSection(Lcom/android/systemui/statusbar/notification/collection/ListEntry;)Z
    .locals 0

    .line 210
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/HeadsUpCoordinator$4;->this$0:Lcom/android/systemui/statusbar/notification/collection/coordinator/HeadsUpCoordinator;

    invoke-static {p0, p1}, Lcom/android/systemui/statusbar/notification/collection/coordinator/HeadsUpCoordinator;->access$600(Lcom/android/systemui/statusbar/notification/collection/coordinator/HeadsUpCoordinator;Lcom/android/systemui/statusbar/notification/collection/ListEntry;)Z

    move-result p0

    return p0
.end method
