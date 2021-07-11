.class public Lcom/google/android/libraries/assistant/oemsmartspace/lib/ProtoStore;
.super Ljava/lang/Object;


# instance fields
.field private final context:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/libraries/assistant/oemsmartspace/lib/ProtoStore;->context:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public load(Ljava/lang/String;Z)Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceCard;
    .locals 6

    const-string v0, "ProtoStore"

    iget-object v1, p0, Lcom/google/android/libraries/assistant/oemsmartspace/lib/ProtoStore;->context:Landroid/content/Context;

    invoke-virtual {v1, p1}, Landroid/content/Context;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    const/4 v1, 0x0

    :try_start_0
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v3

    long-to-int v3, v3

    new-array v4, v3, [B

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5, v3}, Ljava/io/FileInputStream;->read([BII)I

    invoke-static {}, Lcom/google/geo/sidekick/SmartspaceProto$SmartspaceUpdate$SmartspaceCard;->newBuilder()Lcom/google/geo/sidekick/SmartspaceProto$SmartspaceUpdate$SmartspaceCard$Builder;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/google/protobuf/AbstractMessageLite$Builder;->mergeFrom([B)Lcom/google/protobuf/AbstractMessageLite$Builder;

    invoke-virtual {v2}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v2

    check-cast v2, Lcom/google/geo/sidekick/SmartspaceProto$SmartspaceUpdate$SmartspaceCard;

    new-instance v3, Ljava/io/FileInputStream;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "Icon"

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v3, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-static {v3}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object p1

    new-instance v3, Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceCard;

    iget-object p0, p0, Lcom/google/android/libraries/assistant/oemsmartspace/lib/ProtoStore;->context:Landroid/content/Context;

    xor-int/lit8 v4, p2, 0x1

    invoke-direct {v3, p0, v2, v4, p1}, Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceCard;-><init>(Landroid/content/Context;Lcom/google/geo/sidekick/SmartspaceProto$SmartspaceUpdate$SmartspaceCard;ZLandroid/graphics/Bitmap;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v3

    :catch_0
    move-exception p0

    const-string/jumbo p1, "unable to load data"

    invoke-static {v0, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v1

    :catch_1
    if-eqz p2, :cond_0

    const-string p0, "current"

    goto :goto_0

    :cond_0
    const-string/jumbo p0, "weather"

    :goto_0
    const-string p1, "no cached data for card type: "

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p2

    if-eqz p2, :cond_1

    invoke-virtual {p1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    :cond_1
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, p1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_1
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1
.end method

.method public store(Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceCard;Ljava/lang/String;)V
    .locals 5

    const-string v0, "ProtoStore"

    if-eqz p1, :cond_2

    :try_start_0
    invoke-virtual {p1}, Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceCard;->getCard()Lcom/google/geo/sidekick/SmartspaceProto$SmartspaceUpdate$SmartspaceCard;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {p1}, Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceCard;->isExpired()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {p1}, Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceCard;->getCard()Lcom/google/geo/sidekick/SmartspaceProto$SmartspaceUpdate$SmartspaceCard;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/libraries/assistant/oemsmartspace/lib/ProtoStore;->context:Landroid/content/Context;

    const/4 v3, 0x0

    invoke-virtual {v2, p2, v3}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v2

    invoke-virtual {v1}, Lcom/google/protobuf/AbstractMessageLite;->toByteArray()[B

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/io/FileOutputStream;->write([B)V

    iget-object v1, p0, Lcom/google/android/libraries/assistant/oemsmartspace/lib/ProtoStore;->context:Landroid/content/Context;

    invoke-virtual {v1, p2}, Landroid/content/Context;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x14

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string/jumbo v2, "store file to path: "

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceCard;->getIcon()Landroid/graphics/Bitmap;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceCard;->getIcon()Landroid/graphics/Bitmap;

    move-result-object p1

    iget-object p0, p0, Lcom/google/android/libraries/assistant/oemsmartspace/lib/ProtoStore;->context:Landroid/content/Context;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    const-string v1, "Icon"

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object p2, v1

    :goto_0
    invoke-virtual {p0, p2, v3}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object p0

    sget-object p2, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v1, 0x64

    invoke-virtual {p1, p2, v1, p0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    invoke-virtual {p0}, Ljava/io/FileOutputStream;->close()V

    :cond_1
    return-void

    :catch_0
    move-exception p0

    goto :goto_2

    :cond_2
    const-string p1, "deleting "

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {p1, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_3
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object p1, v1

    :goto_1
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/google/android/libraries/assistant/oemsmartspace/lib/ProtoStore;->context:Landroid/content/Context;

    invoke-virtual {p0, p2}, Landroid/content/Context;->deleteFile(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :goto_2
    const-string/jumbo p1, "unable to write file"

    invoke-static {v0, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void

    :catch_1
    const-string p0, "file does not exist"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
