.class public Lcom/android/systemui/statusbar/policy/SmartReplyView$SmartReplies;
.super Ljava/lang/Object;
.source "SmartReplyView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/policy/SmartReplyView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SmartReplies"
.end annotation


# instance fields
.field public final choices:[Ljava/lang/CharSequence;

.field public final fromAssistant:Z

.field public final pendingIntent:Landroid/app/PendingIntent;

.field public final remoteInput:Landroid/app/RemoteInput;


# direct methods
.method public constructor <init>([Ljava/lang/CharSequence;Landroid/app/RemoteInput;Landroid/app/PendingIntent;Z)V
    .locals 0

    .line 964
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 965
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/SmartReplyView$SmartReplies;->choices:[Ljava/lang/CharSequence;

    .line 966
    iput-object p2, p0, Lcom/android/systemui/statusbar/policy/SmartReplyView$SmartReplies;->remoteInput:Landroid/app/RemoteInput;

    .line 967
    iput-object p3, p0, Lcom/android/systemui/statusbar/policy/SmartReplyView$SmartReplies;->pendingIntent:Landroid/app/PendingIntent;

    .line 968
    iput-boolean p4, p0, Lcom/android/systemui/statusbar/policy/SmartReplyView$SmartReplies;->fromAssistant:Z

    return-void
.end method
