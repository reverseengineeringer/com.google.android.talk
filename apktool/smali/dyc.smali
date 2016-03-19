.class public final Ldyc;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcwi;


# static fields
.field static final a:Z


# instance fields
.field private final b:Ldye;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 36
    sget-object v0, Lezi;->l:Limx;

    const/4 v0, 0x0

    sput-boolean v0, Ldyc;->a:Z

    return-void
.end method

.method protected constructor <init>()V
    .locals 1

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    const/4 v0, 0x0

    iput-object v0, p0, Ldyc;->b:Ldye;

    .line 51
    return-void
.end method

.method public constructor <init>(Ldye;)V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object p1, p0, Ldyc;->b:Ldye;

    .line 42
    return-void
.end method

.method private a(Lied;)Lieb;
    .locals 9

    .prologue
    const/16 v8, 0x7a

    const/16 v2, 0x72

    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    .line 127
    const-string v1, "Babel_MediaUploadNetReq"

    const-string v3, "Start uploading local URL -- "

    iget-object v0, p0, Ldyc;->b:Ldye;

    invoke-virtual {v0}, Ldye;->e()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v7

    if-eqz v7, :cond_0

    invoke-virtual {v3, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    new-array v3, v6, [Ljava/lang/Object;

    invoke-static {v1, v0, v3}, Lezi;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2089
    :try_start_0
    new-instance v0, Lier;

    invoke-direct {v0}, Lier;-><init>()V

    iget-object v1, p0, Ldyc;->b:Ldye;

    .line 2090
    invoke-virtual {v1}, Ldye;->e()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Lier;->a(Landroid/net/Uri;)Lier;

    move-result-object v0

    iget-object v1, p0, Ldyc;->b:Ldye;

    .line 2091
    invoke-virtual {v1}, Ldye;->h()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lier;->a(Ljava/lang/String;)Lier;

    move-result-object v0

    iget-object v1, p0, Ldyc;->b:Ldye;

    .line 2092
    invoke-virtual {v1}, Ldye;->g()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lier;->b(Ljava/lang/String;)Lier;

    move-result-object v0

    iget-object v1, p0, Ldyc;->b:Ldye;

    .line 2093
    invoke-virtual {v1}, Ldye;->f()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lier;->c(Ljava/lang/String;)Lier;

    move-result-object v0

    .line 2094
    invoke-virtual {v0}, Lier;->a()Lier;

    move-result-object v0

    .line 2095
    invoke-virtual {v0}, Lier;->b()Lier;

    move-result-object v0

    .line 2096
    invoke-virtual {v0}, Lier;->c()Lieq;

    move-result-object v0

    .line 129
    invoke-virtual {p1, v0}, Lied;->a(Lieq;)Lieb;
    :try_end_0
    .catch Lidy; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lidu; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lidv; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lidt; {:try_start_0 .. :try_end_0} :catch_3
    .catch Lidq; {:try_start_0 .. :try_end_0} :catch_4
    .catch Lidx; {:try_start_0 .. :try_end_0} :catch_5
    .catch Lids; {:try_start_0 .. :try_end_0} :catch_6
    .catch Lidr; {:try_start_0 .. :try_end_0} :catch_7
    .catch Lidw; {:try_start_0 .. :try_end_0} :catch_8
    .catch Lidp; {:try_start_0 .. :try_end_0} :catch_9

    move-result-object v0

    .line 130
    return-object v0

    .line 127
    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 131
    :catch_0
    move-exception v0

    .line 132
    new-instance v1, Ldvn;

    invoke-direct {v1, v8, v0}, Ldvn;-><init>(ILjava/lang/Exception;)V

    throw v1

    .line 133
    :catch_1
    move-exception v3

    .line 134
    new-instance v1, Ldvn;

    const-string v7, "media changed"

    invoke-direct/range {v1 .. v7}, Ldvn;-><init>(ILjava/lang/Exception;JZLjava/lang/String;)V

    throw v1

    .line 136
    :catch_2
    move-exception v3

    .line 137
    new-instance v1, Ldvn;

    const-string v7, "media unavailable"

    invoke-direct/range {v1 .. v7}, Ldvn;-><init>(ILjava/lang/Exception;JZLjava/lang/String;)V

    throw v1

    .line 139
    :catch_3
    move-exception v0

    .line 140
    new-instance v1, Ldvn;

    invoke-direct {v1, v2, v0}, Ldvn;-><init>(ILjava/lang/Exception;)V

    throw v1

    .line 141
    :catch_4
    move-exception v3

    .line 142
    new-instance v1, Ldvn;

    const/16 v2, 0x66

    const-string v7, "connectivity constraint"

    invoke-direct/range {v1 .. v7}, Ldvn;-><init>(ILjava/lang/Exception;JZLjava/lang/String;)V

    throw v1

    .line 144
    :catch_5
    move-exception v0

    .line 145
    new-instance v1, Ldvn;

    const/16 v2, 0x68

    invoke-direct {v1, v2, v0}, Ldvn;-><init>(ILjava/lang/Exception;)V

    throw v1

    .line 146
    :catch_6
    move-exception v3

    .line 147
    new-instance v1, Ldvn;

    const-string v7, "invalid content uri"

    invoke-direct/range {v1 .. v7}, Ldvn;-><init>(ILjava/lang/Exception;JZLjava/lang/String;)V

    throw v1

    .line 149
    :catch_7
    move-exception v3

    .line 150
    new-instance v1, Ldvn;

    const-string v7, "invalid content type"

    invoke-direct/range {v1 .. v7}, Ldvn;-><init>(ILjava/lang/Exception;JZLjava/lang/String;)V

    throw v1

    .line 152
    :catch_8
    move-exception v3

    .line 153
    new-instance v1, Ldvn;

    const-string v7, "restart; retriable"

    move v2, v8

    invoke-direct/range {v1 .. v7}, Ldvn;-><init>(ILjava/lang/Exception;JZLjava/lang/String;)V

    throw v1

    .line 155
    :catch_9
    move-exception v3

    .line 156
    new-instance v1, Ldvn;

    const/16 v2, 0x79

    const-string v7, "abort"

    invoke-direct/range {v1 .. v7}, Ldvn;-><init>(ILjava/lang/Exception;JZLjava/lang/String;)V

    throw v1
.end method

.method private a(IIJ)V
    .locals 5

    .prologue
    .line 3219
    new-instance v0, Lcsn;

    .line 4040
    invoke-direct {v0}, Lcsn;-><init>()V

    .line 227
    iget-object v1, p0, Ldyc;->b:Ldye;

    .line 228
    invoke-virtual {v1}, Ldye;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcsn;->a(Ljava/lang/String;)Lcsn;

    move-result-object v0

    iget-object v1, p0, Ldyc;->b:Ldye;

    .line 229
    invoke-virtual {v1}, Ldye;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcsn;->c(Ljava/lang/String;)Lcsn;

    move-result-object v0

    .line 230
    invoke-virtual {v0, p2}, Lcsn;->a(I)Lcsn;

    move-result-object v0

    .line 231
    invoke-virtual {v0, p3, p4}, Lcsn;->b(J)Lcsn;

    move-result-object v0

    .line 233
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    const/16 v1, 0xa

    .line 232
    invoke-static {p1, v2, v3, v1, v0}, Laen;->a(IJILcsn;)V

    .line 234
    return-void
.end method


# virtual methods
.method public E_()Z
    .locals 1

    .prologue
    .line 67
    const/4 v0, 0x0

    return v0
.end method

.method public F_()Z
    .locals 1

    .prologue
    .line 178
    const/4 v0, 0x1

    return v0
.end method

.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 55
    const-string v0, "photo_queue"

    return-object v0
.end method

.method public a(Landroid/content/Context;Lcwk;Lcwm;)V
    .locals 6

    .prologue
    .line 73
    iget v0, p2, Lcwk;->c:I

    new-instance v1, Ldyd;

    invoke-direct {v1, p0}, Ldyd;-><init>(Ldyc;)V

    .line 1102
    invoke-static {v0}, Ldvd;->e(I)Lbfd;

    move-result-object v2

    .line 1103
    if-nez v2, :cond_0

    .line 1104
    new-instance v0, Ldvn;

    const/16 v1, 0x72

    const-string v2, "null account"

    invoke-direct {v0, v1, v2}, Ldvn;-><init>(ILjava/lang/String;)V

    throw v0

    .line 1108
    :cond_0
    new-instance v3, Lief;

    invoke-direct {v3, p1}, Lief;-><init>(Landroid/content/Context;)V

    .line 1110
    invoke-virtual {v2}, Lbfd;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lief;->a(Ljava/lang/String;)Lief;

    move-result-object v3

    .line 1111
    invoke-virtual {v2}, Lbfd;->b()Lczb;

    move-result-object v4

    iget-object v4, v4, Lczb;->a:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lief;->b(Ljava/lang/String;)Lief;

    move-result-object v3

    .line 1112
    invoke-virtual {v2}, Lbfd;->U()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Lief;->c(Ljava/lang/String;)Lief;

    move-result-object v2

    .line 1113
    invoke-virtual {v2, v1}, Lief;->a(Lieh;)Lief;

    move-result-object v1

    sget-object v2, Liep;->a:Liep;

    .line 1114
    invoke-virtual {v1, v2}, Lief;->a(Liep;)Lief;

    move-result-object v1

    .line 1115
    invoke-virtual {v1}, Lief;->a()Lied;

    move-result-object v1

    .line 1116
    const/16 v2, 0x1f5

    const-wide/16 v4, 0x0

    invoke-direct {p0, v0, v2, v4, v5}, Ldyc;->a(IIJ)V

    .line 1117
    invoke-direct {p0, v1}, Ldyc;->a(Lied;)Lieb;

    move-result-object v1

    .line 1118
    const/16 v2, 0x1f6

    .line 1121
    invoke-virtual {v1}, Lieb;->a()J

    move-result-wide v4

    .line 1118
    invoke-direct {p0, v0, v2, v4, v5}, Ldyc;->a(IIJ)V

    .line 85
    return-void
.end method

.method public a(Lcwi;)Z
    .locals 1

    .prologue
    .line 193
    const/4 v0, 0x0

    return v0
.end method

.method public a(Lcwk;Ldvn;)Z
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 3036
    sget-object v0, Laal;->oJ:Landroid/content/Context;

    .line 203
    const-class v3, Lbdp;

    invoke-static {v0, v3}, Lilh;->a(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbdp;

    .line 204
    const-string v3, "babel_max_upload_error_retries"

    const/16 v4, 0xa

    .line 205
    invoke-interface {v0, v3, v4}, Lbdp;->a(Ljava/lang/String;I)I

    move-result v0

    .line 208
    invoke-virtual {p2}, Ldvn;->c()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    .line 219
    const-string v0, "Babel_MediaUploadNetReq"

    invoke-virtual {p2}, Ldvn;->c()I

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    const/16 v4, 0x31

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "Default no retry on BabelClientError: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v1, [Ljava/lang/Object;

    invoke-static {v0, v2, v3}, Lezi;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move v0, v1

    .line 220
    :goto_0
    return v0

    :sswitch_0
    move v0, v1

    .line 210
    goto :goto_0

    .line 212
    :sswitch_1
    iget v3, p1, Lcwk;->d:I

    if-ge v3, v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    goto :goto_0

    :sswitch_2
    move v0, v2

    .line 214
    goto :goto_0

    :sswitch_3
    move v0, v1

    .line 216
    goto :goto_0

    .line 208
    nop

    :sswitch_data_0
    .sparse-switch
        0x66 -> :sswitch_2
        0x68 -> :sswitch_0
        0x72 -> :sswitch_3
        0x7a -> :sswitch_1
    .end sparse-switch
.end method

.method public a(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 188
    const/4 v0, 0x0

    return v0
.end method

.method public b()J
    .locals 4

    .prologue
    .line 1036
    sget-object v0, Laal;->oJ:Landroid/content/Context;

    .line 60
    const-class v1, Lbdp;

    invoke-static {v0, v1}, Lilh;->a(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbdp;

    .line 61
    const-string v1, "babel_pending_message_failure_duration"

    const-wide/32 v2, 0x124f80

    invoke-interface {v0, v1, v2, v3}, Lbdp;->a(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public b(ILdvn;)V
    .locals 4

    .prologue
    .line 162
    invoke-static {p1}, Ldvd;->e(I)Lbfd;

    move-result-object v0

    .line 163
    if-nez v0, :cond_1

    .line 164
    const-string v0, "Babel_MediaUploadNetReq"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lezi;->a(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 165
    const-string v0, "Babel_MediaUploadNetReq"

    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x39

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Skipping request failure for invalid account: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lezi;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 174
    :cond_0
    :goto_0
    return-void

    .line 170
    :cond_1
    const/16 v0, 0x1f7

    .line 173
    invoke-virtual {p2}, Ldvn;->c()I

    move-result v1

    int-to-long v2, v1

    .line 170
    invoke-direct {p0, p1, v0, v2, v3}, Ldyc;->a(IIJ)V

    goto :goto_0
.end method

.method public e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 183
    const/4 v0, 0x0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 198
    const-string v1, "MediaUploadNetworkRequest "

    iget-object v0, p0, Ldyc;->b:Ldye;

    invoke-virtual {v0}, Ldye;->toString()Ljava/lang/String;

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
