.class public final Leia;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final a:Z

.field public static volatile b:Leia;


# instance fields
.field final c:Ljava/lang/Object;

.field d:I

.field e:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lejc;",
            ">;"
        }
    .end annotation
.end field

.field private final f:Lfic;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 36
    sget-object v0, Lezi;->q:Limx;

    const/4 v0, 0x0

    sput-boolean v0, Leia;->a:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    .line 127
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Leia;->c:Ljava/lang/Object;

    .line 45
    const/4 v0, 0x0

    iput v0, p0, Leia;->d:I

    .line 48
    const/4 v0, 0x0

    iput-object v0, p0, Leia;->e:Ljava/util/Set;

    .line 52
    new-instance v0, Lfid;

    .line 1036
    sget-object v1, Laal;->oJ:Landroid/content/Context;

    .line 52
    invoke-direct {v0, v1}, Lfid;-><init>(Landroid/content/Context;)V

    .line 53
    sget-object v1, Lglu;->c:Lfhw;

    new-instance v2, Lglx;

    invoke-direct {v2}, Lglx;-><init>()V

    const/16 v3, 0x75

    .line 54
    invoke-virtual {v2, v3}, Lglx;->a(I)Lglx;

    move-result-object v2

    invoke-virtual {v2}, Lglx;->a()Lglw;

    move-result-object v2

    .line 53
    invoke-virtual {v0, v1, v2}, Lfid;->a(Lfhw;Lfhy;)Lfid;

    .line 56
    new-instance v1, Leib;

    invoke-direct {v1, p0}, Leib;-><init>(Leia;)V

    invoke-virtual {v0, v1}, Lfid;->a(Lfif;)Lfid;

    .line 81
    new-instance v1, Leic;

    invoke-direct {v1, p0}, Leic;-><init>(Leia;)V

    invoke-virtual {v0, v1}, Lfid;->a(Lfih;)Lfid;

    .line 99
    invoke-virtual {v0}, Lfid;->b()Lfic;

    move-result-object v0

    iput-object v0, p0, Leia;->f:Lfic;

    .line 129
    return-void
.end method

.method public static a(Ljava/lang/Long;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 117
    const-string v0, "gmscontact:"

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 124
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "gmscontact:"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method a(Lcom/google/android/gms/common/api/Status;Landroid/os/ParcelFileDescriptor;Lejc;)V
    .locals 7

    .prologue
    const/4 v0, 0x0

    .line 235
    invoke-virtual {p1}, Lcom/google/android/gms/common/api/Status;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    if-nez p2, :cond_2

    .line 236
    :cond_0
    sget-boolean v1, Leia;->a:Z

    if-eqz v1, :cond_1

    .line 237
    const-string v1, "Babel_medialoader"

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, 0x2d

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/2addr v5, v6

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v5, "GmsAvatarLoader: Avatar loaded: status="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "  pfd="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lezi;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 239
    :cond_1
    invoke-virtual {p0, p3, v0}, Leia;->a(Lejc;[B)V

    .line 262
    :goto_0
    return-void

    .line 242
    :cond_2
    new-instance v2, Ljava/io/FileInputStream;

    invoke-virtual {p2}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V

    .line 245
    :try_start_0
    invoke-virtual {v2}, Ljava/io/FileInputStream;->available()I

    move-result v3

    .line 246
    new-array v1, v3, [B

    .line 247
    invoke-virtual {v2, v1}, Ljava/io/FileInputStream;->read([B)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    if-ge v4, v3, :cond_3

    .line 256
    :goto_1
    :try_start_1
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 261
    :goto_2
    invoke-virtual {p0, p3, v0}, Leia;->a(Lejc;[B)V

    goto :goto_0

    .line 257
    :catch_0
    move-exception v1

    .line 258
    const-string v2, "Babel_medialoader"

    const-string v3, "Error closing avatar file for contact."

    invoke-static {v2, v3, v1}, Lezi;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    .line 251
    :catch_1
    move-exception v1

    .line 252
    :try_start_2
    const-string v3, "Babel_medialoader"

    const-string v4, "Error reading avatar file for contact."

    invoke-static {v3, v4, v1}, Lezi;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 256
    :try_start_3
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_2

    .line 257
    :catch_2
    move-exception v1

    .line 258
    const-string v2, "Babel_medialoader"

    const-string v3, "Error closing avatar file for contact."

    invoke-static {v2, v3, v1}, Lezi;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    .line 255
    :catchall_0
    move-exception v0

    .line 256
    :try_start_4
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 259
    :goto_3
    throw v0

    .line 257
    :catch_3
    move-exception v1

    .line 258
    const-string v2, "Babel_medialoader"

    const-string v3, "Error closing avatar file for contact."

    invoke-static {v2, v3, v1}, Lezi;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_3

    :cond_3
    move-object v0, v1

    goto :goto_1
.end method

.method public a(Lejc;)V
    .locals 3

    .prologue
    .line 176
    invoke-static {}, Lhbs;->b()V

    .line 178
    iget-object v1, p0, Leia;->c:Ljava/lang/Object;

    monitor-enter v1

    .line 1136
    :try_start_0
    iget v0, p0, Leia;->d:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Leia;->d:I

    .line 1138
    iget-object v0, p0, Leia;->f:Lfic;

    invoke-interface {v0}, Lfic;->e()Z

    move-result v0

    if-nez v0, :cond_4

    .line 1139
    iget-object v0, p0, Leia;->f:Lfic;

    invoke-interface {v0}, Lfic;->f()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1144
    iget-object v0, p0, Leia;->f:Lfic;

    invoke-interface {v0}, Lfic;->b()V

    .line 1146
    :cond_0
    const/4 v0, 0x0

    .line 180
    :goto_0
    if-nez v0, :cond_2

    .line 182
    iget-object v2, p0, Leia;->e:Ljava/util/Set;

    if-nez v2, :cond_1

    .line 183
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    iput-object v2, p0, Leia;->e:Ljava/util/Set;

    .line 185
    :cond_1
    iget-object v2, p0, Leia;->e:Ljava/util/Set;

    invoke-interface {v2, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 187
    :cond_2
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 188
    if-eqz v0, :cond_3

    .line 189
    invoke-virtual {p0, p1}, Leia;->b(Lejc;)V

    .line 191
    :cond_3
    return-void

    .line 1148
    :cond_4
    const/4 v0, 0x1

    goto :goto_0

    .line 187
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method a(Lejc;[B)V
    .locals 4

    .prologue
    .line 2036
    sget-object v0, Laal;->oJ:Landroid/content/Context;

    .line 266
    const-class v1, Leit;

    invoke-static {v0, v1}, Lilh;->a(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Leit;

    .line 268
    if-eqz p2, :cond_2

    .line 269
    new-instance v1, Leis;

    const-string v2, "image/jpeg"

    const/4 v3, 0x0

    invoke-direct {v1, p2, v2, v3}, Leis;-><init>([BLjava/lang/String;Z)V

    invoke-virtual {v0, p1, v1}, Leit;->a(Lejc;Leis;)V

    .line 2157
    :goto_0
    iget-object v1, p0, Leia;->c:Ljava/lang/Object;

    monitor-enter v1

    .line 2158
    :try_start_0
    iget v0, p0, Leia;->d:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Leia;->d:I

    .line 2160
    iget v0, p0, Leia;->d:I

    if-nez v0, :cond_1

    .line 2161
    iget-object v0, p0, Leia;->f:Lfic;

    invoke-interface {v0}, Lfic;->e()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Leia;->f:Lfic;

    invoke-interface {v0}, Lfic;->f()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2162
    :cond_0
    iget-object v0, p0, Leia;->f:Lfic;

    invoke-interface {v0}, Lfic;->d()V

    .line 2168
    :cond_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    .line 272
    :cond_2
    invoke-virtual {v0, p1}, Leit;->b(Lejc;)V

    goto :goto_0

    .line 2168
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method b(Lejc;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 197
    invoke-virtual {p1}, Lejc;->n()Leyg;

    move-result-object v0

    invoke-virtual {v0}, Leyg;->n()Ljava/lang/String;

    move-result-object v0

    .line 198
    invoke-static {v0}, Leia;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 199
    const-string v0, "Babel_medialoader"

    const-string v1, "GmsAvatarLoader: Not a valid gms url"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lezi;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 200
    invoke-virtual {p0, p1, v3}, Leia;->a(Lejc;[B)V

    .line 228
    :goto_0
    return-void

    .line 204
    :cond_0
    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 205
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 206
    const-string v0, "Babel_medialoader"

    const-string v1, "GmsAvatarLoader: Empty contact id in gms url"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lezi;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 207
    invoke-virtual {p0, p1, v3}, Leia;->a(Lejc;[B)V

    goto :goto_0

    .line 213
    :cond_1
    :try_start_0
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    .line 220
    sget-object v2, Lglu;->g:Lglo;

    iget-object v3, p0, Leia;->f:Lfic;

    .line 221
    invoke-virtual {v2, v3, v0, v1}, Lglo;->a(Lfic;J)Lfij;

    move-result-object v0

    .line 222
    new-instance v1, Leid;

    invoke-direct {v1, p0, p1}, Leid;-><init>(Leia;Lejc;)V

    invoke-interface {v0, v1}, Lfij;->a(Lfin;)V

    goto :goto_0

    .line 215
    :catch_0
    move-exception v0

    const-string v0, "Babel_medialoader"

    const-string v1, "GmsAvatarLoader: Invalid contact id."

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lezi;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 216
    invoke-virtual {p0, p1, v3}, Leia;->a(Lejc;[B)V

    goto :goto_0
.end method
