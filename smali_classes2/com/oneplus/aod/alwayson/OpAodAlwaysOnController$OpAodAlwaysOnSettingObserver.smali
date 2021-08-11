.class Lcom/oneplus/aod/alwayson/OpAodAlwaysOnController$OpAodAlwaysOnSettingObserver;
.super Landroid/database/ContentObserver;
.source "OpAodAlwaysOnController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/aod/alwayson/OpAodAlwaysOnController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OpAodAlwaysOnSettingObserver"
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field final synthetic this$0:Lcom/oneplus/aod/alwayson/OpAodAlwaysOnController;


# direct methods
.method public constructor <init>(Lcom/oneplus/aod/alwayson/OpAodAlwaysOnController;Landroid/content/Context;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/aod/alwayson/OpAodAlwaysOnController$OpAodAlwaysOnSettingObserver;->this$0:Lcom/oneplus/aod/alwayson/OpAodAlwaysOnController;

    invoke-direct {p0, p3}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    iput-object p2, p0, Lcom/oneplus/aod/alwayson/OpAodAlwaysOnController$OpAodAlwaysOnSettingObserver;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 3

    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    iget-object p1, p0, Lcom/oneplus/aod/alwayson/OpAodAlwaysOnController$OpAodAlwaysOnSettingObserver;->this$0:Lcom/oneplus/aod/alwayson/OpAodAlwaysOnController;

    iget-object v0, p0, Lcom/oneplus/aod/alwayson/OpAodAlwaysOnController$OpAodAlwaysOnSettingObserver;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "doze_always_on"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, v2}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    move v2, v1

    :cond_0
    invoke-static {p1, v2}, Lcom/oneplus/aod/alwayson/OpAodAlwaysOnController;->access$102(Lcom/oneplus/aod/alwayson/OpAodAlwaysOnController;Z)Z

    iget-object p0, p0, Lcom/oneplus/aod/alwayson/OpAodAlwaysOnController$OpAodAlwaysOnSettingObserver;->this$0:Lcom/oneplus/aod/alwayson/OpAodAlwaysOnController;

    const-string p1, "disable always on when settings changed"

    invoke-static {p0, p1}, Lcom/oneplus/aod/alwayson/OpAodAlwaysOnController;->access$200(Lcom/oneplus/aod/alwayson/OpAodAlwaysOnController;Ljava/lang/String;)V

    return-void
.end method
