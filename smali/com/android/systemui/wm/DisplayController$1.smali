.class Lcom/android/systemui/wm/DisplayController$1;
.super Landroid/view/IDisplayWindowListener$Stub;
.source "DisplayController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/wm/DisplayController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/wm/DisplayController;


# direct methods
.method constructor <init>(Lcom/android/systemui/wm/DisplayController;)V
    .locals 0

    .line 66
    iput-object p1, p0, Lcom/android/systemui/wm/DisplayController$1;->this$0:Lcom/android/systemui/wm/DisplayController;

    invoke-direct {p0}, Landroid/view/IDisplayWindowListener$Stub;-><init>()V

    return-void
.end method

.method private synthetic lambda$onDisplayAdded$0(I)V
    .locals 5

    .line 70
    iget-object v0, p0, Lcom/android/systemui/wm/DisplayController$1;->this$0:Lcom/android/systemui/wm/DisplayController;

    invoke-static {v0}, Lcom/android/systemui/wm/DisplayController;->access$100(Lcom/android/systemui/wm/DisplayController;)Landroid/util/SparseArray;

    move-result-object v0

    monitor-enter v0

    .line 71
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/wm/DisplayController$1;->this$0:Lcom/android/systemui/wm/DisplayController;

    invoke-static {v1}, Lcom/android/systemui/wm/DisplayController;->access$100(Lcom/android/systemui/wm/DisplayController;)Landroid/util/SparseArray;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 72
    monitor-exit v0

    return-void

    .line 74
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/wm/DisplayController$1;->this$0:Lcom/android/systemui/wm/DisplayController;

    invoke-virtual {v1, p1}, Lcom/android/systemui/wm/DisplayController;->getDisplay(I)Landroid/view/Display;

    move-result-object v1

    if-nez v1, :cond_1

    .line 78
    monitor-exit v0

    return-void

    .line 80
    :cond_1
    new-instance v2, Lcom/android/systemui/wm/DisplayController$DisplayRecord;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/android/systemui/wm/DisplayController$DisplayRecord;-><init>(Lcom/android/systemui/wm/DisplayController$1;)V

    if-nez p1, :cond_2

    .line 82
    iget-object v3, p0, Lcom/android/systemui/wm/DisplayController$1;->this$0:Lcom/android/systemui/wm/DisplayController;

    invoke-static {v3}, Lcom/android/systemui/wm/DisplayController;->access$300(Lcom/android/systemui/wm/DisplayController;)Landroid/content/Context;

    move-result-object v3

    goto :goto_0

    .line 83
    :cond_2
    iget-object v3, p0, Lcom/android/systemui/wm/DisplayController$1;->this$0:Lcom/android/systemui/wm/DisplayController;

    invoke-static {v3}, Lcom/android/systemui/wm/DisplayController;->access$300(Lcom/android/systemui/wm/DisplayController;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/content/Context;->createDisplayContext(Landroid/view/Display;)Landroid/content/Context;

    move-result-object v3

    :goto_0
    iput-object v3, v2, Lcom/android/systemui/wm/DisplayController$DisplayRecord;->mContext:Landroid/content/Context;

    .line 84
    new-instance v4, Lcom/android/systemui/wm/DisplayLayout;

    invoke-direct {v4, v3, v1}, Lcom/android/systemui/wm/DisplayLayout;-><init>(Landroid/content/Context;Landroid/view/Display;)V

    iput-object v4, v2, Lcom/android/systemui/wm/DisplayController$DisplayRecord;->mDisplayLayout:Lcom/android/systemui/wm/DisplayLayout;

    .line 85
    iget-object v1, p0, Lcom/android/systemui/wm/DisplayController$1;->this$0:Lcom/android/systemui/wm/DisplayController;

    invoke-static {v1}, Lcom/android/systemui/wm/DisplayController;->access$100(Lcom/android/systemui/wm/DisplayController;)Landroid/util/SparseArray;

    move-result-object v1

    invoke-virtual {v1, p1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/4 v1, 0x0

    .line 86
    :goto_1
    iget-object v2, p0, Lcom/android/systemui/wm/DisplayController$1;->this$0:Lcom/android/systemui/wm/DisplayController;

    invoke-static {v2}, Lcom/android/systemui/wm/DisplayController;->access$200(Lcom/android/systemui/wm/DisplayController;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_3

    .line 87
    iget-object v2, p0, Lcom/android/systemui/wm/DisplayController$1;->this$0:Lcom/android/systemui/wm/DisplayController;

    invoke-static {v2}, Lcom/android/systemui/wm/DisplayController;->access$200(Lcom/android/systemui/wm/DisplayController;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/wm/DisplayController$OnDisplaysChangedListener;

    invoke-interface {v2, p1}, Lcom/android/systemui/wm/DisplayController$OnDisplaysChangedListener;->onDisplayAdded(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 89
    :cond_3
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private synthetic lambda$onDisplayConfigurationChanged$1(ILandroid/content/res/Configuration;)V
    .locals 5

    .line 96
    iget-object v0, p0, Lcom/android/systemui/wm/DisplayController$1;->this$0:Lcom/android/systemui/wm/DisplayController;

    invoke-static {v0}, Lcom/android/systemui/wm/DisplayController;->access$100(Lcom/android/systemui/wm/DisplayController;)Landroid/util/SparseArray;

    move-result-object v0

    monitor-enter v0

    .line 97
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/wm/DisplayController$1;->this$0:Lcom/android/systemui/wm/DisplayController;

    invoke-static {v1}, Lcom/android/systemui/wm/DisplayController;->access$100(Lcom/android/systemui/wm/DisplayController;)Landroid/util/SparseArray;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/wm/DisplayController$DisplayRecord;

    if-nez v1, :cond_0

    const-string p0, "DisplayController"

    const-string p1, "Skipping Display Configuration change on non-added display."

    .line 99
    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    monitor-exit v0

    return-void

    .line 103
    :cond_0
    iget-object v2, p0, Lcom/android/systemui/wm/DisplayController$1;->this$0:Lcom/android/systemui/wm/DisplayController;

    invoke-virtual {v2, p1}, Lcom/android/systemui/wm/DisplayController;->getDisplay(I)Landroid/view/Display;

    move-result-object v2

    if-nez v2, :cond_1

    const-string p0, "DisplayController"

    const-string p1, "Skipping Display Configuration change on invalid display. It may have been removed."

    .line 105
    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    monitor-exit v0

    return-void

    .line 109
    :cond_1
    iget-object v3, p0, Lcom/android/systemui/wm/DisplayController$1;->this$0:Lcom/android/systemui/wm/DisplayController;

    invoke-static {v3}, Lcom/android/systemui/wm/DisplayController;->access$300(Lcom/android/systemui/wm/DisplayController;)Landroid/content/Context;

    move-result-object v3

    if-eqz p1, :cond_2

    .line 111
    iget-object v3, p0, Lcom/android/systemui/wm/DisplayController$1;->this$0:Lcom/android/systemui/wm/DisplayController;

    invoke-static {v3}, Lcom/android/systemui/wm/DisplayController;->access$300(Lcom/android/systemui/wm/DisplayController;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/content/Context;->createDisplayContext(Landroid/view/Display;)Landroid/content/Context;

    move-result-object v3

    .line 113
    :cond_2
    invoke-virtual {v3, p2}, Landroid/content/Context;->createConfigurationContext(Landroid/content/res/Configuration;)Landroid/content/Context;

    move-result-object v3

    iput-object v3, v1, Lcom/android/systemui/wm/DisplayController$DisplayRecord;->mContext:Landroid/content/Context;

    .line 114
    new-instance v4, Lcom/android/systemui/wm/DisplayLayout;

    invoke-direct {v4, v3, v2}, Lcom/android/systemui/wm/DisplayLayout;-><init>(Landroid/content/Context;Landroid/view/Display;)V

    iput-object v4, v1, Lcom/android/systemui/wm/DisplayController$DisplayRecord;->mDisplayLayout:Lcom/android/systemui/wm/DisplayLayout;

    const/4 v1, 0x0

    .line 115
    :goto_0
    iget-object v2, p0, Lcom/android/systemui/wm/DisplayController$1;->this$0:Lcom/android/systemui/wm/DisplayController;

    invoke-static {v2}, Lcom/android/systemui/wm/DisplayController;->access$200(Lcom/android/systemui/wm/DisplayController;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_3

    .line 116
    iget-object v2, p0, Lcom/android/systemui/wm/DisplayController$1;->this$0:Lcom/android/systemui/wm/DisplayController;

    invoke-static {v2}, Lcom/android/systemui/wm/DisplayController;->access$200(Lcom/android/systemui/wm/DisplayController;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/wm/DisplayController$OnDisplaysChangedListener;

    invoke-interface {v2, p1, p2}, Lcom/android/systemui/wm/DisplayController$OnDisplaysChangedListener;->onDisplayConfigurationChanged(ILandroid/content/res/Configuration;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 119
    :cond_3
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private synthetic lambda$onDisplayRemoved$2(I)V
    .locals 3

    .line 126
    iget-object v0, p0, Lcom/android/systemui/wm/DisplayController$1;->this$0:Lcom/android/systemui/wm/DisplayController;

    invoke-static {v0}, Lcom/android/systemui/wm/DisplayController;->access$100(Lcom/android/systemui/wm/DisplayController;)Landroid/util/SparseArray;

    move-result-object v0

    monitor-enter v0

    .line 127
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/wm/DisplayController$1;->this$0:Lcom/android/systemui/wm/DisplayController;

    invoke-static {v1}, Lcom/android/systemui/wm/DisplayController;->access$100(Lcom/android/systemui/wm/DisplayController;)Landroid/util/SparseArray;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    .line 128
    monitor-exit v0

    return-void

    .line 130
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/wm/DisplayController$1;->this$0:Lcom/android/systemui/wm/DisplayController;

    invoke-static {v1}, Lcom/android/systemui/wm/DisplayController;->access$200(Lcom/android/systemui/wm/DisplayController;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-ltz v1, :cond_1

    .line 131
    iget-object v2, p0, Lcom/android/systemui/wm/DisplayController$1;->this$0:Lcom/android/systemui/wm/DisplayController;

    invoke-static {v2}, Lcom/android/systemui/wm/DisplayController;->access$200(Lcom/android/systemui/wm/DisplayController;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/wm/DisplayController$OnDisplaysChangedListener;

    invoke-interface {v2, p1}, Lcom/android/systemui/wm/DisplayController$OnDisplaysChangedListener;->onDisplayRemoved(I)V

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 133
    :cond_1
    iget-object p0, p0, Lcom/android/systemui/wm/DisplayController$1;->this$0:Lcom/android/systemui/wm/DisplayController;

    invoke-static {p0}, Lcom/android/systemui/wm/DisplayController;->access$100(Lcom/android/systemui/wm/DisplayController;)Landroid/util/SparseArray;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 134
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private synthetic lambda$onFixedRotationFinished$4(I)V
    .locals 3

    .line 158
    iget-object v0, p0, Lcom/android/systemui/wm/DisplayController$1;->this$0:Lcom/android/systemui/wm/DisplayController;

    invoke-static {v0}, Lcom/android/systemui/wm/DisplayController;->access$100(Lcom/android/systemui/wm/DisplayController;)Landroid/util/SparseArray;

    move-result-object v0

    monitor-enter v0

    .line 159
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/wm/DisplayController$1;->this$0:Lcom/android/systemui/wm/DisplayController;

    invoke-static {v1}, Lcom/android/systemui/wm/DisplayController;->access$100(Lcom/android/systemui/wm/DisplayController;)Landroid/util/SparseArray;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/systemui/wm/DisplayController$1;->this$0:Lcom/android/systemui/wm/DisplayController;

    invoke-virtual {v1, p1}, Lcom/android/systemui/wm/DisplayController;->getDisplay(I)Landroid/view/Display;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_1

    .line 164
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/wm/DisplayController$1;->this$0:Lcom/android/systemui/wm/DisplayController;

    invoke-static {v1}, Lcom/android/systemui/wm/DisplayController;->access$200(Lcom/android/systemui/wm/DisplayController;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-ltz v1, :cond_1

    .line 165
    iget-object v2, p0, Lcom/android/systemui/wm/DisplayController$1;->this$0:Lcom/android/systemui/wm/DisplayController;

    invoke-static {v2}, Lcom/android/systemui/wm/DisplayController;->access$200(Lcom/android/systemui/wm/DisplayController;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/wm/DisplayController$OnDisplaysChangedListener;

    invoke-interface {v2, p1}, Lcom/android/systemui/wm/DisplayController$OnDisplaysChangedListener;->onFixedRotationFinished(I)V

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 167
    :cond_1
    monitor-exit v0

    return-void

    :cond_2
    :goto_1
    const-string p0, "DisplayController"

    .line 160
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Skipping onFixedRotationFinished on unknown display, displayId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    .line 167
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private synthetic lambda$onFixedRotationStarted$3(II)V
    .locals 3

    .line 141
    iget-object v0, p0, Lcom/android/systemui/wm/DisplayController$1;->this$0:Lcom/android/systemui/wm/DisplayController;

    invoke-static {v0}, Lcom/android/systemui/wm/DisplayController;->access$100(Lcom/android/systemui/wm/DisplayController;)Landroid/util/SparseArray;

    move-result-object v0

    monitor-enter v0

    .line 142
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/wm/DisplayController$1;->this$0:Lcom/android/systemui/wm/DisplayController;

    invoke-static {v1}, Lcom/android/systemui/wm/DisplayController;->access$100(Lcom/android/systemui/wm/DisplayController;)Landroid/util/SparseArray;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/systemui/wm/DisplayController$1;->this$0:Lcom/android/systemui/wm/DisplayController;

    invoke-virtual {v1, p1}, Lcom/android/systemui/wm/DisplayController;->getDisplay(I)Landroid/view/Display;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_1

    .line 147
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/wm/DisplayController$1;->this$0:Lcom/android/systemui/wm/DisplayController;

    invoke-static {v1}, Lcom/android/systemui/wm/DisplayController;->access$200(Lcom/android/systemui/wm/DisplayController;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-ltz v1, :cond_1

    .line 148
    iget-object v2, p0, Lcom/android/systemui/wm/DisplayController$1;->this$0:Lcom/android/systemui/wm/DisplayController;

    invoke-static {v2}, Lcom/android/systemui/wm/DisplayController;->access$200(Lcom/android/systemui/wm/DisplayController;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/wm/DisplayController$OnDisplaysChangedListener;

    invoke-interface {v2, p1, p2}, Lcom/android/systemui/wm/DisplayController$OnDisplaysChangedListener;->onFixedRotationStarted(II)V

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 151
    :cond_1
    monitor-exit v0

    return-void

    :cond_2
    :goto_1
    const-string p0, "DisplayController"

    .line 143
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Skipping onFixedRotationStarted on unknown display, displayId="

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    .line 151
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method


# virtual methods
.method public synthetic lambda$onDisplayAdded$0$DisplayController$1(I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/wm/DisplayController$1;->lambda$onDisplayAdded$0(I)V

    return-void
.end method

.method public synthetic lambda$onDisplayConfigurationChanged$1$DisplayController$1(ILandroid/content/res/Configuration;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/wm/DisplayController$1;->lambda$onDisplayConfigurationChanged$1(ILandroid/content/res/Configuration;)V

    return-void
.end method

.method public synthetic lambda$onDisplayRemoved$2$DisplayController$1(I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/wm/DisplayController$1;->lambda$onDisplayRemoved$2(I)V

    return-void
.end method

.method public synthetic lambda$onFixedRotationFinished$4$DisplayController$1(I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/wm/DisplayController$1;->lambda$onFixedRotationFinished$4(I)V

    return-void
.end method

.method public synthetic lambda$onFixedRotationStarted$3$DisplayController$1(II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/wm/DisplayController$1;->lambda$onFixedRotationStarted$3(II)V

    return-void
.end method

.method public onDisplayAdded(I)V
    .locals 2

    .line 69
    iget-object v0, p0, Lcom/android/systemui/wm/DisplayController$1;->this$0:Lcom/android/systemui/wm/DisplayController;

    invoke-static {v0}, Lcom/android/systemui/wm/DisplayController;->access$000(Lcom/android/systemui/wm/DisplayController;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/wm/-$$Lambda$DisplayController$1$zJ2mVywyLG45RsLGtw9ST7xxypY;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/wm/-$$Lambda$DisplayController$1$zJ2mVywyLG45RsLGtw9ST7xxypY;-><init>(Lcom/android/systemui/wm/DisplayController$1;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onDisplayConfigurationChanged(ILandroid/content/res/Configuration;)V
    .locals 2

    .line 95
    iget-object v0, p0, Lcom/android/systemui/wm/DisplayController$1;->this$0:Lcom/android/systemui/wm/DisplayController;

    invoke-static {v0}, Lcom/android/systemui/wm/DisplayController;->access$000(Lcom/android/systemui/wm/DisplayController;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/wm/-$$Lambda$DisplayController$1$mO2SyO-pDmJKrsjv09X-0fk_FOg;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/systemui/wm/-$$Lambda$DisplayController$1$mO2SyO-pDmJKrsjv09X-0fk_FOg;-><init>(Lcom/android/systemui/wm/DisplayController$1;ILandroid/content/res/Configuration;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onDisplayRemoved(I)V
    .locals 2

    .line 125
    iget-object v0, p0, Lcom/android/systemui/wm/DisplayController$1;->this$0:Lcom/android/systemui/wm/DisplayController;

    invoke-static {v0}, Lcom/android/systemui/wm/DisplayController;->access$000(Lcom/android/systemui/wm/DisplayController;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/wm/-$$Lambda$DisplayController$1$sHTeIz3WbujoajhpVNRgzuLoi74;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/wm/-$$Lambda$DisplayController$1$sHTeIz3WbujoajhpVNRgzuLoi74;-><init>(Lcom/android/systemui/wm/DisplayController$1;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onFixedRotationFinished(I)V
    .locals 2

    .line 157
    iget-object v0, p0, Lcom/android/systemui/wm/DisplayController$1;->this$0:Lcom/android/systemui/wm/DisplayController;

    invoke-static {v0}, Lcom/android/systemui/wm/DisplayController;->access$000(Lcom/android/systemui/wm/DisplayController;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/wm/-$$Lambda$DisplayController$1$ZPKsrnP-JwHyuDSJzU-6c-SEJs0;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/wm/-$$Lambda$DisplayController$1$ZPKsrnP-JwHyuDSJzU-6c-SEJs0;-><init>(Lcom/android/systemui/wm/DisplayController$1;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onFixedRotationStarted(II)V
    .locals 2

    .line 140
    iget-object v0, p0, Lcom/android/systemui/wm/DisplayController$1;->this$0:Lcom/android/systemui/wm/DisplayController;

    invoke-static {v0}, Lcom/android/systemui/wm/DisplayController;->access$000(Lcom/android/systemui/wm/DisplayController;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/wm/-$$Lambda$DisplayController$1$l7FiEOWmAq5RJbL_Wn1mlPPItcA;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/systemui/wm/-$$Lambda$DisplayController$1$l7FiEOWmAq5RJbL_Wn1mlPPItcA;-><init>(Lcom/android/systemui/wm/DisplayController$1;II)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
