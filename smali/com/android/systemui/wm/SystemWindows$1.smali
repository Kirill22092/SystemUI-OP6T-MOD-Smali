.class Lcom/android/systemui/wm/SystemWindows$1;
.super Ljava/lang/Object;
.source "SystemWindows.java"

# interfaces
.implements Lcom/android/systemui/wm/DisplayController$OnDisplaysChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/wm/SystemWindows;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/wm/SystemWindows;


# direct methods
.method constructor <init>(Lcom/android/systemui/wm/SystemWindows;)V
    .locals 0

    .line 74
    iput-object p1, p0, Lcom/android/systemui/wm/SystemWindows$1;->this$0:Lcom/android/systemui/wm/SystemWindows;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDisplayAdded(I)V
    .locals 0

    return-void
.end method

.method public onDisplayConfigurationChanged(ILandroid/content/res/Configuration;)V
    .locals 0

    .line 80
    iget-object p0, p0, Lcom/android/systemui/wm/SystemWindows$1;->this$0:Lcom/android/systemui/wm/SystemWindows;

    invoke-static {p0}, Lcom/android/systemui/wm/SystemWindows;->access$000(Lcom/android/systemui/wm/SystemWindows;)Landroid/util/SparseArray;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/wm/SystemWindows$PerDisplay;

    if-nez p0, :cond_0

    return-void

    .line 84
    :cond_0
    invoke-virtual {p0, p2}, Lcom/android/systemui/wm/SystemWindows$PerDisplay;->updateConfiguration(Landroid/content/res/Configuration;)V

    return-void
.end method

.method public onDisplayRemoved(I)V
    .locals 0

    return-void
.end method
