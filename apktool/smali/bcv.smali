.class public final Lbcv;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lbcv;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public a:J

.field public b:J

.field public c:J

.field public d:J

.field public e:J

.field public f:I

.field public g:[Lbcp;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 282
    new-instance v0, Lbcw;

    invoke-direct {v0}, Lbcw;-><init>()V

    sput-object v0, Lbcv;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lbcp;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    const-wide/32 v0, 0x20161234

    iput-wide v0, p0, Lbcv;->a:J

    .line 86
    invoke-static {p1}, Lbcv;->c(Landroid/content/Context;)J

    move-result-wide v0

    iput-wide v0, p0, Lbcv;->b:J

    .line 87
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    int-to-long v0, v0

    iput-wide v0, p0, Lbcv;->c:J

    .line 88
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lbcv;->d:J

    .line 89
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lbcv;->e:J

    .line 91
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    iput v0, p0, Lbcv;->f:I

    .line 92
    iget v0, p0, Lbcv;->f:I

    new-array v0, v0, [Lbcp;

    iput-object v0, p0, Lbcv;->g:[Lbcp;

    move v1, v2

    .line 93
    :goto_0
    iget v0, p0, Lbcv;->f:I

    if-ge v1, v0, :cond_0

    .line 94
    iget-object v3, p0, Lbcv;->g:[Lbcp;

    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbcp;

    aput-object v0, v3, v1

    .line 95
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v3, p0, Lbcv;->g:[Lbcp;

    aget-object v3, v3, v1

    .line 98
    invoke-virtual {v3}, Lbcp;->a()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v2

    const/4 v3, 0x1

    iget-object v4, p0, Lbcv;->g:[Lbcp;

    aget-object v4, v4, v1

    iget-wide v4, v4, Lbcp;->d:J

    iget-wide v6, p0, Lbcv;->d:J

    sub-long/2addr v4, v6

    long-to-int v4, v4

    .line 99
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v0, v3

    .line 93
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 101
    :cond_0
    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 7

    .prologue
    const/4 v5, 0x0

    .line 254
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 255
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lbcv;->a:J

    .line 256
    iget-wide v0, p0, Lbcv;->a:J

    const-wide/32 v2, 0x20161234

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 257
    const-string v0, "Babel_ConcPersist"

    iget-wide v2, p0, Lbcv;->a:J

    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v4, 0x4a

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "Error reading persisted state - incorrect magic word: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v5, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lezi;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 280
    :goto_0
    return-void

    .line 260
    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lbcv;->b:J

    .line 261
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lbcv;->c:J

    .line 262
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lbcv;->d:J

    .line 263
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lbcv;->e:J

    .line 264
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lbcv;->f:I

    .line 265
    iget v0, p0, Lbcv;->f:I

    if-ltz v0, :cond_1

    iget v0, p0, Lbcv;->f:I

    const v1, 0x186a0

    if-le v0, v1, :cond_2

    .line 266
    :cond_1
    const-string v0, "Babel_ConcPersist"

    const-string v1, "Error reading persisted state - incorrect bundle data."

    new-array v2, v5, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lezi;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 270
    :cond_2
    iget-wide v0, p0, Lbcv;->a:J

    iget-wide v2, p0, Lbcv;->b:J

    iget v4, p0, Lbcv;->f:I

    new-instance v5, Ljava/lang/StringBuilder;

    const/16 v6, 0x65

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v6, "Reading parcel : magicWord "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "; version "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "; numBundles "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 278
    const-class v0, Lbcp;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelableArray(Ljava/lang/ClassLoader;)[Landroid/os/Parcelable;

    move-result-object v0

    .line 279
    array-length v1, v0

    const-class v2, [Lbcp;

    invoke-static {v0, v1, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;ILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lbcp;

    iput-object v0, p0, Lbcv;->g:[Lbcp;

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;)Lbcv;
    .locals 10

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    const/4 v1, 0x0

    .line 169
    invoke-static {}, Laal;->x()V

    .line 3104
    :try_start_0
    const-string v0, "service_state.log"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 173
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    move-object v0, v1

    .line 234
    :goto_0
    return-object v0

    .line 176
    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v2

    .line 177
    const-wide/32 v4, 0x400000

    cmp-long v4, v2, v4

    if-ltz v4, :cond_1

    .line 179
    const-string v0, "Babel_ConcPersist"

    const-string v4, "Persisted file is too large to read (%d bytes)"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    long-to-int v2, v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v5, v6

    invoke-static {v0, v4, v5}, Lezi;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move-object v0, v1

    .line 180
    goto :goto_0

    .line 4104
    :cond_1
    const-string v4, "service_state.log"

    invoke-virtual {p0, v4}, Landroid/content/Context;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v4

    .line 186
    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, 0x35

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v6, "Reading persisted state "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "; "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " bytes."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 190
    long-to-int v4, v2

    new-array v4, v4, [B

    .line 191
    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 192
    invoke-virtual {v5, v4}, Ljava/io/FileInputStream;->read([B)I

    move-result v6

    int-to-long v6, v6

    .line 193
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V

    .line 196
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 198
    cmp-long v0, v6, v2

    if-eqz v0, :cond_2

    move-object v0, v1

    .line 199
    goto :goto_0

    .line 202
    :cond_2
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 203
    const/4 v0, 0x0

    array-length v3, v4

    invoke-virtual {v2, v4, v0, v3}, Landroid/os/Parcel;->unmarshall([BII)V

    .line 204
    const/4 v0, 0x0

    invoke-virtual {v2, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 205
    sget-object v0, Lbcv;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbcv;

    .line 206
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 210
    invoke-direct {v0, p0}, Lbcv;->b(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 211
    const-string v2, "Babel_ConcPersist"

    const-string v3, "Persisted state is out of date; client version %d, OS version %d"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-wide v6, v0, Lbcv;->b:J

    long-to-int v6, v6

    .line 214
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    iget-wide v6, v0, Lbcv;->c:J

    long-to-int v0, v6

    .line 215
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v4, v5

    .line 211
    invoke-static {v2, v3, v4}, Lezi;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move-object v0, v1

    .line 216
    goto/16 :goto_0

    .line 219
    :cond_3
    iget v2, v0, Lbcv;->f:I
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    if-nez v2, :cond_4

    move-object v0, v1

    .line 220
    goto/16 :goto_0

    .line 223
    :catch_0
    move-exception v0

    const-string v0, "Babel_ConcPersist"

    const-string v2, "OutOfMemoryError saving state - quitting."

    new-array v3, v8, [Ljava/lang/Object;

    invoke-static {v0, v2, v3}, Lezi;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move-object v0, v1

    .line 224
    goto/16 :goto_0

    .line 227
    :catch_1
    move-exception v0

    move-object v0, v1

    goto/16 :goto_0

    .line 228
    :catch_2
    move-exception v0

    .line 229
    const-string v2, "Babel_ConcPersist"

    const-string v3, "Unable to open persisted state."

    invoke-static {v2, v3, v0}, Lezi;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v0, v1

    .line 230
    goto/16 :goto_0

    .line 233
    :cond_4
    new-array v1, v9, [Ljava/lang/Object;

    iget v2, v0, Lbcv;->f:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v8

    goto/16 :goto_0
.end method

.method public static a(Landroid/content/Context;Ljava/util/List;)Z
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lbcp;",
            ">;)Z"
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 112
    invoke-static {}, Laal;->x()V

    .line 1104
    const-string v2, "service_state.log"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    .line 116
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 117
    const-string v3, "Babel_ConcPersist"

    const-string v4, "File already exists: %s "

    new-array v5, v1, [Ljava/lang/Object;

    .line 2104
    const-string v6, "service_state.log"

    invoke-virtual {p0, v6}, Landroid/content/Context;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v6

    .line 117
    aput-object v6, v5, v0

    invoke-static {v3, v4, v5}, Lezi;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 118
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 121
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 159
    :cond_1
    :goto_0
    return v0

    .line 125
    :cond_2
    new-array v3, v1, [Ljava/lang/Object;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v0

    .line 126
    new-instance v3, Lbcv;

    invoke-direct {v3, p0, p1}, Lbcv;-><init>(Landroid/content/Context;Ljava/util/List;)V

    .line 129
    :try_start_0
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v4

    .line 130
    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Lbcv;->writeToParcel(Landroid/os/Parcel;I)V

    .line 131
    invoke-virtual {v4}, Landroid/os/Parcel;->marshall()[B

    move-result-object v5

    .line 132
    invoke-virtual {v4}, Landroid/os/Parcel;->recycle()V

    .line 133
    array-length v4, v5

    const/high16 v6, 0x400000

    if-lt v4, v6, :cond_3

    .line 134
    const-string v1, "Babel_ConcPersist"

    const-string v3, "Not persisting any state as there is too much data (%d bytes)."

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v6, 0x0

    array-length v5, v5

    .line 137
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    .line 134
    invoke-static {v1, v3, v4}, Lezi;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 150
    :catch_0
    move-exception v1

    const-string v1, "Babel_ConcPersist"

    const-string v2, "OutOfMemoryError saving state - quitting."

    new-array v3, v0, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lezi;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 141
    :cond_3
    :try_start_1
    invoke-direct {v3, p0}, Lbcv;->b(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 145
    new-instance v3, Ljava/io/FileOutputStream;

    const/4 v4, 0x0

    invoke-direct {v3, v2, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    .line 146
    invoke-virtual {v3, v5}, Ljava/io/FileOutputStream;->write([B)V

    .line 147
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V

    .line 148
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->flush()V
    :try_end_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    move v0, v1

    .line 159
    goto :goto_0

    .line 152
    :catch_1
    move-exception v1

    .line 153
    const-string v3, "Babel_ConcPersist"

    const-string v4, "Error saving state, deleting and quitting."

    invoke-static {v3, v4, v1}, Lezi;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 154
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 155
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    goto :goto_0
.end method

.method private b(Landroid/content/Context;)Z
    .locals 4

    .prologue
    .line 71
    iget-wide v0, p0, Lbcv;->a:J

    const-wide/32 v2, 0x20161234

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    iget-wide v0, p0, Lbcv;->b:J

    .line 72
    invoke-static {p1}, Lbcv;->c(Landroid/content/Context;)J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    iget-wide v0, p0, Lbcv;->c:J

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    int-to-long v2, v2

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 74
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lbcv;->e:J

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    .line 75
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lbcv;->d:J

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    iget v0, p0, Lbcv;->f:I

    if-ltz v0, :cond_0

    iget v0, p0, Lbcv;->f:I

    const v1, 0x186a0

    if-gt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static c(Landroid/content/Context;)J
    .locals 2

    .prologue
    .line 81
    const-class v0, Lfak;

    invoke-static {p0, v0}, Lilh;->a(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfak;

    invoke-virtual {v0}, Lfak;->d()J

    move-result-wide v0

    return-wide v0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 239
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 6

    .prologue
    .line 244
    iget-wide v0, p0, Lbcv;->a:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 245
    iget-wide v0, p0, Lbcv;->b:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 246
    iget-wide v0, p0, Lbcv;->c:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 247
    iget-wide v0, p0, Lbcv;->d:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 248
    iget-wide v0, p0, Lbcv;->e:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 249
    iget v0, p0, Lbcv;->f:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 250
    iget-object v0, p0, Lbcv;->g:[Lbcp;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelableArray([Landroid/os/Parcelable;I)V

    .line 251
    iget-wide v0, p0, Lbcv;->a:J

    iget-wide v2, p0, Lbcv;->b:J

    new-instance v4, Ljava/lang/StringBuilder;

    const/16 v5, 0x45

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v5, "Parcel : magicWord "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "; version "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 252
    return-void
.end method
