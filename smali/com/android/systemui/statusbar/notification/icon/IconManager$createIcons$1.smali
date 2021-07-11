.class final Lcom/android/systemui/statusbar/notification/icon/IconManager$createIcons$1;
.super Ljava/lang/Object;
.source "IconManager.kt"

# interfaces
.implements Lcom/android/systemui/statusbar/StatusBarIconView$OnVisibilityChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/notification/icon/IconManager;->createIcons(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic $entry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/icon/IconManager$createIcons$1;->$entry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onVisibilityChanged(I)V
    .locals 0

    .line 101
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/icon/IconManager$createIcons$1;->$entry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->setShelfIconVisible(Z)V

    return-void
.end method
