.class Lcom/android/systemui/statusbar/notification/collection/coordinator/RankingCoordinator$3;
.super Ljava/lang/Object;
.source "RankingCoordinator.java"

# interfaces
.implements Lcom/android/systemui/plugins/statusbar/StatusBarStateController$StateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/notification/collection/coordinator/RankingCoordinator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/notification/collection/coordinator/RankingCoordinator;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/notification/collection/coordinator/RankingCoordinator;)V
    .locals 0

    .line 77
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/RankingCoordinator$3;->this$0:Lcom/android/systemui/statusbar/notification/collection/coordinator/RankingCoordinator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDozingChanged(Z)V
    .locals 0

    .line 80
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/RankingCoordinator$3;->this$0:Lcom/android/systemui/statusbar/notification/collection/coordinator/RankingCoordinator;

    invoke-static {p0}, Lcom/android/systemui/statusbar/notification/collection/coordinator/RankingCoordinator;->access$100(Lcom/android/systemui/statusbar/notification/collection/coordinator/RankingCoordinator;)Lcom/android/systemui/statusbar/notification/collection/listbuilder/pluggable/NotifFilter;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/collection/listbuilder/pluggable/Pluggable;->invalidateList()V

    return-void
.end method
