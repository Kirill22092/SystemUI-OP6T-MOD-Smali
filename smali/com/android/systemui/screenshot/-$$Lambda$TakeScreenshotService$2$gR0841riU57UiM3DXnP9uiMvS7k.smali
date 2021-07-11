.class public final synthetic Lcom/android/systemui/screenshot/-$$Lambda$TakeScreenshotService$2$gR0841riU57UiM3DXnP9uiMvS7k;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroid/os/Messenger;


# direct methods
.method public synthetic constructor <init>(Landroid/os/Messenger;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/screenshot/-$$Lambda$TakeScreenshotService$2$gR0841riU57UiM3DXnP9uiMvS7k;->f$0:Landroid/os/Messenger;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/screenshot/-$$Lambda$TakeScreenshotService$2$gR0841riU57UiM3DXnP9uiMvS7k;->f$0:Landroid/os/Messenger;

    invoke-static {p0}, Lcom/android/systemui/screenshot/TakeScreenshotService$2;->lambda$handleMessage$1(Landroid/os/Messenger;)V

    return-void
.end method
