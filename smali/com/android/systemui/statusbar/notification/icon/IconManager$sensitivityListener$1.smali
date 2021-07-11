.class final Lcom/android/systemui/statusbar/notification/icon/IconManager$sensitivityListener$1;
.super Ljava/lang/Object;
.source "IconManager.kt"

# interfaces
.implements Lcom/android/systemui/statusbar/notification/collection/NotificationEntry$OnSensitivityChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/notification/icon/IconManager;-><init>(Lcom/android/systemui/statusbar/notification/collection/notifcollection/CommonNotifCollection;Landroid/content/pm/LauncherApps;Lcom/android/systemui/statusbar/notification/icon/IconBuilder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/notification/icon/IconManager;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/notification/icon/IconManager;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/icon/IconManager$sensitivityListener$1;->this$0:Lcom/android/systemui/statusbar/notification/icon/IconManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onSensitivityChanged(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V
    .locals 1
    .param p1    # Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "entry"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 80
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/icon/IconManager$sensitivityListener$1;->this$0:Lcom/android/systemui/statusbar/notification/icon/IconManager;

    invoke-static {p0, p1}, Lcom/android/systemui/statusbar/notification/icon/IconManager;->access$updateIconsSafe(Lcom/android/systemui/statusbar/notification/icon/IconManager;Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V

    return-void
.end method
