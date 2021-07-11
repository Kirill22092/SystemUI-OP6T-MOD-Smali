.class public Lcom/android/systemui/statusbar/notification/collection/init/NotifPipelineInitializer;
.super Ljava/lang/Object;
.source "NotifPipelineInitializer.java"

# interfaces
.implements Lcom/android/systemui/Dumpable;


# instance fields
.field private final mDumpManager:Lcom/android/systemui/dump/DumpManager;

.field private final mFeatureFlags:Lcom/android/systemui/statusbar/FeatureFlags;

.field private final mGroupCoalescer:Lcom/android/systemui/statusbar/notification/collection/coalescer/GroupCoalescer;

.field private final mListBuilder:Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder;

.field private final mNotifCollection:Lcom/android/systemui/statusbar/notification/collection/NotifCollection;

.field private final mNotifInflater:Lcom/android/systemui/statusbar/notification/collection/NotifInflaterImpl;

.field private final mNotifPluggableCoordinators:Lcom/android/systemui/statusbar/notification/collection/coordinator/NotifCoordinators;

.field private final mNotifViewManager:Lcom/android/systemui/statusbar/notification/collection/NotifViewManager;

.field private final mPipelineWrapper:Lcom/android/systemui/statusbar/notification/collection/NotifPipeline;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/notification/collection/NotifPipeline;Lcom/android/systemui/statusbar/notification/collection/coalescer/GroupCoalescer;Lcom/android/systemui/statusbar/notification/collection/NotifCollection;Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder;Lcom/android/systemui/statusbar/notification/collection/coordinator/NotifCoordinators;Lcom/android/systemui/statusbar/notification/collection/NotifInflaterImpl;Lcom/android/systemui/dump/DumpManager;Lcom/android/systemui/statusbar/FeatureFlags;Lcom/android/systemui/statusbar/notification/collection/NotifViewManager;)V
    .locals 0

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/collection/init/NotifPipelineInitializer;->mPipelineWrapper:Lcom/android/systemui/statusbar/notification/collection/NotifPipeline;

    .line 69
    iput-object p2, p0, Lcom/android/systemui/statusbar/notification/collection/init/NotifPipelineInitializer;->mGroupCoalescer:Lcom/android/systemui/statusbar/notification/collection/coalescer/GroupCoalescer;

    .line 70
    iput-object p3, p0, Lcom/android/systemui/statusbar/notification/collection/init/NotifPipelineInitializer;->mNotifCollection:Lcom/android/systemui/statusbar/notification/collection/NotifCollection;

    .line 71
    iput-object p4, p0, Lcom/android/systemui/statusbar/notification/collection/init/NotifPipelineInitializer;->mListBuilder:Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder;

    .line 72
    iput-object p5, p0, Lcom/android/systemui/statusbar/notification/collection/init/NotifPipelineInitializer;->mNotifPluggableCoordinators:Lcom/android/systemui/statusbar/notification/collection/coordinator/NotifCoordinators;

    .line 73
    iput-object p7, p0, Lcom/android/systemui/statusbar/notification/collection/init/NotifPipelineInitializer;->mDumpManager:Lcom/android/systemui/dump/DumpManager;

    .line 74
    iput-object p6, p0, Lcom/android/systemui/statusbar/notification/collection/init/NotifPipelineInitializer;->mNotifInflater:Lcom/android/systemui/statusbar/notification/collection/NotifInflaterImpl;

    .line 75
    iput-object p8, p0, Lcom/android/systemui/statusbar/notification/collection/init/NotifPipelineInitializer;->mFeatureFlags:Lcom/android/systemui/statusbar/FeatureFlags;

    .line 76
    iput-object p9, p0, Lcom/android/systemui/statusbar/notification/collection/init/NotifPipelineInitializer;->mNotifViewManager:Lcom/android/systemui/statusbar/notification/collection/NotifViewManager;

    return-void
.end method


# virtual methods
.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 1

    .line 107
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/init/NotifPipelineInitializer;->mNotifViewManager:Lcom/android/systemui/statusbar/notification/collection/NotifViewManager;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/systemui/statusbar/notification/collection/NotifViewManager;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 108
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/init/NotifPipelineInitializer;->mNotifPluggableCoordinators:Lcom/android/systemui/statusbar/notification/collection/coordinator/NotifCoordinators;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/systemui/statusbar/notification/collection/coordinator/NotifCoordinators;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 109
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/init/NotifPipelineInitializer;->mGroupCoalescer:Lcom/android/systemui/statusbar/notification/collection/coalescer/GroupCoalescer;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/systemui/statusbar/notification/collection/coalescer/GroupCoalescer;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    return-void
.end method

.method public initialize(Lcom/android/systemui/statusbar/NotificationListener;Lcom/android/systemui/statusbar/notification/collection/inflation/NotificationRowBinderImpl;Lcom/android/systemui/statusbar/notification/stack/NotificationListContainer;)V
    .locals 2

    .line 85
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/init/NotifPipelineInitializer;->mDumpManager:Lcom/android/systemui/dump/DumpManager;

    const-string v1, "NotifPipeline"

    invoke-virtual {v0, v1, p0}, Lcom/android/systemui/dump/DumpManager;->registerDumpable(Ljava/lang/String;Lcom/android/systemui/Dumpable;)V

    .line 88
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/init/NotifPipelineInitializer;->mFeatureFlags:Lcom/android/systemui/statusbar/FeatureFlags;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/FeatureFlags;->isNewNotifPipelineRenderingEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 89
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/init/NotifPipelineInitializer;->mNotifInflater:Lcom/android/systemui/statusbar/notification/collection/NotifInflaterImpl;

    invoke-virtual {v0, p2}, Lcom/android/systemui/statusbar/notification/collection/NotifInflaterImpl;->setRowBinder(Lcom/android/systemui/statusbar/notification/collection/inflation/NotificationRowBinderImpl;)V

    .line 93
    :cond_0
    iget-object p2, p0, Lcom/android/systemui/statusbar/notification/collection/init/NotifPipelineInitializer;->mNotifPluggableCoordinators:Lcom/android/systemui/statusbar/notification/collection/coordinator/NotifCoordinators;

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/init/NotifPipelineInitializer;->mPipelineWrapper:Lcom/android/systemui/statusbar/notification/collection/NotifPipeline;

    invoke-virtual {p2, v0}, Lcom/android/systemui/statusbar/notification/collection/coordinator/NotifCoordinators;->attach(Lcom/android/systemui/statusbar/notification/collection/NotifPipeline;)V

    .line 96
    iget-object p2, p0, Lcom/android/systemui/statusbar/notification/collection/init/NotifPipelineInitializer;->mNotifViewManager:Lcom/android/systemui/statusbar/notification/collection/NotifViewManager;

    invoke-virtual {p2, p3}, Lcom/android/systemui/statusbar/notification/collection/NotifViewManager;->setViewConsumer(Lcom/android/systemui/statusbar/notification/collection/SimpleNotificationListContainer;)V

    .line 97
    iget-object p2, p0, Lcom/android/systemui/statusbar/notification/collection/init/NotifPipelineInitializer;->mNotifViewManager:Lcom/android/systemui/statusbar/notification/collection/NotifViewManager;

    iget-object p3, p0, Lcom/android/systemui/statusbar/notification/collection/init/NotifPipelineInitializer;->mListBuilder:Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder;

    invoke-virtual {p2, p3}, Lcom/android/systemui/statusbar/notification/collection/NotifViewManager;->attach(Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder;)V

    .line 98
    iget-object p2, p0, Lcom/android/systemui/statusbar/notification/collection/init/NotifPipelineInitializer;->mListBuilder:Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder;

    iget-object p3, p0, Lcom/android/systemui/statusbar/notification/collection/init/NotifPipelineInitializer;->mNotifCollection:Lcom/android/systemui/statusbar/notification/collection/NotifCollection;

    invoke-virtual {p2, p3}, Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder;->attach(Lcom/android/systemui/statusbar/notification/collection/NotifCollection;)V

    .line 99
    iget-object p2, p0, Lcom/android/systemui/statusbar/notification/collection/init/NotifPipelineInitializer;->mNotifCollection:Lcom/android/systemui/statusbar/notification/collection/NotifCollection;

    iget-object p3, p0, Lcom/android/systemui/statusbar/notification/collection/init/NotifPipelineInitializer;->mGroupCoalescer:Lcom/android/systemui/statusbar/notification/collection/coalescer/GroupCoalescer;

    invoke-virtual {p2, p3}, Lcom/android/systemui/statusbar/notification/collection/NotifCollection;->attach(Lcom/android/systemui/statusbar/notification/collection/coalescer/GroupCoalescer;)V

    .line 100
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/init/NotifPipelineInitializer;->mGroupCoalescer:Lcom/android/systemui/statusbar/notification/collection/coalescer/GroupCoalescer;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/notification/collection/coalescer/GroupCoalescer;->attach(Lcom/android/systemui/statusbar/NotificationListener;)V

    const-string p0, "Notif pipeline initialized"

    .line 102
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
