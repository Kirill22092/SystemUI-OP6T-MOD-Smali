.class public final synthetic Lcom/android/systemui/screenshot/-$$Lambda$TakeScreenshotService$2$amml4XPd92h7sVnqzN-RFeKOz-s;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Ljava/util/function/Consumer;


# direct methods
.method public synthetic constructor <init>(Ljava/util/function/Consumer;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/screenshot/-$$Lambda$TakeScreenshotService$2$amml4XPd92h7sVnqzN-RFeKOz-s;->f$0:Ljava/util/function/Consumer;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/screenshot/-$$Lambda$TakeScreenshotService$2$amml4XPd92h7sVnqzN-RFeKOz-s;->f$0:Ljava/util/function/Consumer;

    invoke-static {p0}, Lcom/android/systemui/screenshot/TakeScreenshotService$2;->lambda$handleMessage$2(Ljava/util/function/Consumer;)V

    return-void
.end method
