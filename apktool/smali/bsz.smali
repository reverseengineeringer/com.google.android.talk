.class final Lbsz;
.super Let;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Let",
        "<",
        "Ljava/util/List",
        "<",
        "Lbso;",
        ">;>;"
    }
.end annotation


# static fields
.field private static final f:[Ljava/lang/String;


# instance fields
.field private final g:Lff;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lff;"
        }
    .end annotation
.end field

.field private final h:Landroid/net/Uri;

.field private i:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lbso;",
            ">;"
        }
    .end annotation
.end field

.field private j:Z

.field private k:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 24
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "mime_type"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "title"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "date_added"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "_data"

    aput-object v2, v0, v1

    sput-object v0, Lbsz;->f:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 1

    .prologue
    .line 62
    invoke-direct {p0, p1}, Let;-><init>(Landroid/content/Context;)V

    .line 54
    new-instance v0, Lff;

    invoke-direct {v0, p0}, Lff;-><init>(Lfe;)V

    iput-object v0, p0, Lbsz;->g:Lff;

    .line 55
    const-string v0, "external"

    invoke-static {v0}, Landroid/provider/MediaStore$Files;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lbsz;->h:Landroid/net/Uri;

    .line 57
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lbsz;->i:Ljava/util/List;

    .line 63
    iput-boolean p2, p0, Lbsz;->k:Z

    .line 64
    return-void
.end method

.method private a(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lbso;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 68
    invoke-virtual {p0}, Lbsz;->r()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lbsz;->p()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 69
    invoke-super {p0, p1}, Let;->b(Ljava/lang/Object;)V

    .line 71
    :cond_0
    return-void
.end method

.method private h()Ljava/util/List;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lbso;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    .line 123
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 126
    invoke-virtual {p0}, Lbsz;->n()Landroid/content/Context;

    move-result-object v0

    .line 127
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lbsz;->h:Landroid/net/Uri;

    sget-object v2, Lbsz;->f:[Ljava/lang/String;

    iget-boolean v3, p0, Lbsz;->k:Z

    if-eqz v3, :cond_0

    .line 131
    const-string v3, "(media_type=1) OR (media_type=3)"

    :goto_0
    const/4 v4, 0x0

    const-string v5, "date_added DESC"

    .line 128
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 135
    if-nez v1, :cond_1

    .line 136
    const-string v0, "Babel_GalleryPicker"

    const-string v1, "Could not query MediaStore for content Uri: %s and allowVideo: %s."

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lbsz;->h:Landroid/net/Uri;

    aput-object v3, v2, v7

    const/4 v3, 0x1

    iget-boolean v4, p0, Lbsz;->k:Z

    .line 141
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    .line 138
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-array v2, v7, [Ljava/lang/Object;

    .line 136
    invoke-static {v0, v1, v2}, Lezi;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move-object v0, v6

    .line 181
    :goto_1
    return-object v0

    .line 131
    :cond_0
    const-string v3, "(media_type=1)"

    goto :goto_0

    .line 146
    :cond_1
    :try_start_0
    const-string v0, "_id"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    .line 147
    const-string v0, "_data"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    .line 148
    const-string v0, "date_added"

    .line 149
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    .line 150
    const-string v0, "mime_type"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    .line 152
    :cond_2
    :goto_2
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 153
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    .line 154
    invoke-interface {v1, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    .line 155
    invoke-interface {v1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 156
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 158
    if-eqz v7, :cond_2

    .line 159
    const-string v0, "image/"

    invoke-virtual {v7, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 160
    sget-object v0, Lbsq;->b:Lbsq;

    .line 167
    :goto_3
    new-instance v13, Lbsp;

    invoke-direct {v13, v12, v0}, Lbsp;-><init>(Ljava/lang/String;Lbsq;)V

    .line 169
    invoke-virtual {v13, v8, v9}, Lbsp;->a(J)Lbsp;

    move-result-object v0

    iget-object v12, p0, Lbsz;->h:Landroid/net/Uri;

    .line 170
    invoke-static {v8, v9}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v8

    invoke-static {v12, v8}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    invoke-virtual {v0, v8}, Lbsp;->a(Landroid/net/Uri;)Lbsp;

    move-result-object v0

    .line 171
    invoke-virtual {v0, v7}, Lbsp;->a(Ljava/lang/String;)Lbsp;

    move-result-object v0

    .line 172
    invoke-virtual {v0, v10, v11}, Lbsp;->b(J)Lbsp;

    move-result-object v0

    .line 173
    invoke-virtual {v0}, Lbsp;->a()Lbso;

    move-result-object v0

    .line 174
    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    .line 178
    :catchall_0
    move-exception v0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    throw v0

    .line 161
    :cond_3
    :try_start_1
    const-string v0, "video/"

    invoke-virtual {v7, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 162
    sget-object v0, Lbsq;->a:Lbsq;

    goto :goto_3

    .line 164
    :cond_4
    const-string v8, "Babel_GalleryPicker"

    const-string v9, "Unrecognized mime type: "

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v7

    if-eqz v7, :cond_5

    invoke-virtual {v9, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_4
    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v8, v0, v7}, Lezi;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_2

    :cond_5
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v9}, Ljava/lang/String;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_4

    .line 178
    :cond_6
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    move-object v0, v6

    .line 181
    goto/16 :goto_1
.end method

.method private l()V
    .locals 2

    .prologue
    .line 193
    iget-boolean v0, p0, Lbsz;->j:Z

    if-eqz v0, :cond_0

    .line 194
    const/4 v0, 0x0

    iput-boolean v0, p0, Lbsz;->j:Z

    .line 195
    invoke-virtual {p0}, Lbsz;->n()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lbsz;->g:Lff;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 197
    :cond_0
    return-void
.end method


# virtual methods
.method public synthetic b(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 20
    check-cast p1, Ljava/util/List;

    invoke-direct {p0, p1}, Lbsz;->a(Ljava/util/List;)V

    return-void
.end method

.method public synthetic d()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 2107
    invoke-direct {p0}, Lbsz;->h()Ljava/util/List;

    move-result-object v0

    .line 2108
    new-instance v1, Lbta;

    invoke-direct {v1, p0}, Lbta;-><init>(Lbsz;)V

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 20
    return-object v0
.end method

.method protected i()V
    .locals 4

    .prologue
    .line 75
    iget-object v0, p0, Lbsz;->i:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 76
    iget-object v0, p0, Lbsz;->i:Ljava/util/List;

    invoke-direct {p0, v0}, Lbsz;->a(Ljava/util/List;)V

    .line 79
    :cond_0
    invoke-virtual {p0}, Lbsz;->z()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lbsz;->i:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 80
    :cond_1
    invoke-virtual {p0}, Lbsz;->u()V

    .line 1185
    :cond_2
    iget-boolean v0, p0, Lbsz;->j:Z

    if-nez v0, :cond_3

    .line 1186
    invoke-virtual {p0}, Lbsz;->n()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1187
    iget-object v1, p0, Lbsz;->h:Landroid/net/Uri;

    const/4 v2, 0x0

    iget-object v3, p0, Lbsz;->g:Lff;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 1188
    const/4 v0, 0x1

    iput-boolean v0, p0, Lbsz;->j:Z

    .line 83
    :cond_3
    return-void
.end method

.method protected j()V
    .locals 0

    .prologue
    .line 87
    invoke-virtual {p0}, Lbsz;->t()Z

    .line 88
    return-void
.end method

.method protected k()V
    .locals 1

    .prologue
    .line 92
    invoke-super {p0}, Let;->k()V

    .line 94
    invoke-virtual {p0}, Lbsz;->j()V

    .line 95
    iget-object v0, p0, Lbsz;->i:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 96
    invoke-direct {p0}, Lbsz;->l()V

    .line 97
    return-void
.end method

.method protected x()V
    .locals 0

    .prologue
    .line 101
    invoke-super {p0}, Let;->x()V

    .line 102
    invoke-direct {p0}, Lbsz;->l()V

    .line 103
    return-void
.end method
