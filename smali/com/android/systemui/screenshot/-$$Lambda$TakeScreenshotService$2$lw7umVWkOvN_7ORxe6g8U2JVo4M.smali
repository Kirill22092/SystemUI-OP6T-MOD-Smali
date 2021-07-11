.class public final synthetic Lcom/android/systemui/screenshot/-$$Lambda$TakeScreenshotService$2$lw7umVWkOvN_7ORxe6g8U2JVo4M;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Landroid/os/Messenger;


# direct methods
.method public synthetic constructor <init>(Landroid/os/Messenger;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/screenshot/-$$Lambda$TakeScreenshotService$2$lw7umVWkOvN_7ORxe6g8U2JVo4M;->f$0:Landroid/os/Messenger;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/screenshot/-$$Lambda$TakeScreenshotService$2$lw7umVWkOvN_7ORxe6g8U2JVo4M;->f$0:Landroid/os/Messenger;

    check-cast p1, Landroid/net/Uri;

    invoke-static {p0, p1}, Lcom/android/systemui/screenshot/TakeScreenshotService$2;->lambda$handleMessage$0(Landroid/os/Messenger;Landroid/net/Uri;)V

    return-void
.end method
