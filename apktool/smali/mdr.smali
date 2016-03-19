.class public final Lmdr;
.super Llwc;
.source "SourceFile"

# interfaces
.implements Llwr;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llwc",
        "<",
        "Lmdr;",
        "Llwb;",
        ">;",
        "Llwr;"
    }
.end annotation


# static fields
.field public static final e:Lmdr;

.field private static volatile g:Llwt;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Llwt",
            "<",
            "Lmdr;",
            ">;"
        }
    .end annotation
.end field

.field private static final serialVersionUID:J


# instance fields
.field private f:B


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 206
    new-instance v0, Lmdr;

    sget-object v1, Llwg;->e:Llvp;

    .line 2069
    sget-object v2, Llvt;->a:Llvt;

    .line 210
    invoke-direct {v0, v1, v2}, Lmdr;-><init>(Llvp;Llvt;)V

    sput-object v0, Lmdr;->e:Lmdr;

    .line 211
    return-void
.end method

.method private constructor <init>(Llvp;Llvt;)V
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 16
    invoke-direct {p0}, Llwc;-><init>()V

    .line 142
    const/4 v0, -0x1

    iput-byte v0, p0, Lmdr;->f:B

    .line 18
    const/4 v2, 0x0

    .line 19
    :goto_0
    if-nez v2, :cond_0

    .line 20
    :try_start_0
    invoke-virtual {p1}, Llvp;->a()I

    move-result v3

    .line 21
    packed-switch v3, :pswitch_data_0

    .line 1050
    sget v0, Llwe;->g:I

    invoke-virtual {p0, v0}, Llvy;->a(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Llvy;

    .line 26
    invoke-virtual {p0, v0, p1, p2, v3}, Lmdr;->a(Llwp;Llvp;Llvt;I)Z
    :try_end_0
    .catch Llwk; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_1

    move v0, v1

    :goto_1
    move v2, v0

    .line 33
    goto :goto_0

    :pswitch_0
    move v2, v1

    .line 24
    goto :goto_0

    .line 41
    :cond_0
    invoke-virtual {p0}, Lmdr;->e()V

    .line 42
    return-void

    .line 34
    :catch_0
    move-exception v0

    .line 35
    :try_start_1
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-virtual {v0, p0}, Llwk;->a(Llwp;)Llwk;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 41
    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lmdr;->e()V

    throw v0

    .line 36
    :catch_1
    move-exception v0

    .line 37
    :try_start_2
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Llwk;

    .line 39
    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Llwk;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Llwk;->a(Llwp;)Llwk;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_1
    move v0, v2

    goto :goto_1

    .line 21
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method protected final a(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v0, 0x0

    .line 146
    sget-object v1, Lmds;->a:[I

    add-int/lit8 v2, p1, -0x1

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 199
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0

    .line 148
    :pswitch_0
    new-instance p0, Lmdr;

    check-cast p2, Llvp;

    check-cast p3, Llvt;

    invoke-direct {p0, p2, p3}, Lmdr;-><init>(Llvp;Llvt;)V

    .line 196
    :cond_0
    :goto_0
    return-object p0

    .line 152
    :pswitch_1
    new-instance p0, Lmdr;

    sget-object v0, Llwg;->e:Llvp;

    .line 1069
    sget-object v1, Llvt;->a:Llvt;

    .line 155
    invoke-direct {p0, v0, v1}, Lmdr;-><init>(Llvp;Llvt;)V

    goto :goto_0

    .line 158
    :pswitch_2
    iget-byte v1, p0, Lmdr;->f:B

    .line 159
    if-ne v1, v3, :cond_1

    sget-object p0, Lmdr;->e:Lmdr;

    goto :goto_0

    .line 160
    :cond_1
    if-nez v1, :cond_2

    move-object p0, v0

    goto :goto_0

    .line 162
    :cond_2
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 163
    invoke-virtual {p0}, Lmdr;->j()Z

    move-result v2

    if-nez v2, :cond_4

    .line 164
    if-eqz v1, :cond_3

    .line 165
    const/4 v1, 0x0

    iput-byte v1, p0, Lmdr;->f:B

    :cond_3
    move-object p0, v0

    .line 167
    goto :goto_0

    .line 169
    :cond_4
    if-eqz v1, :cond_5

    iput-byte v3, p0, Lmdr;->f:B

    .line 170
    :cond_5
    sget-object p0, Lmdr;->e:Lmdr;

    goto :goto_0

    :pswitch_3
    move-object p0, v0

    .line 174
    goto :goto_0

    .line 177
    :pswitch_4
    new-instance p0, Llwb;

    .line 1129
    invoke-direct {p0}, Llwb;-><init>()V

    goto :goto_0

    .line 1214
    :pswitch_5
    sget-object v0, Lmdr;->e:Lmdr;

    .line 180
    if-eq p2, v0, :cond_0

    .line 181
    check-cast p2, Lmdr;

    .line 1398
    iget-object v0, p0, Llwc;->d:Llvv;

    invoke-virtual {v0}, Llvv;->b()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1399
    iget-object v0, p0, Llwc;->d:Llvv;

    invoke-virtual {v0}, Llvv;->c()Llvv;

    move-result-object v0

    iput-object v0, p0, Llwc;->d:Llvv;

    .line 1401
    :cond_6
    iget-object v0, p0, Llwc;->d:Llvv;

    iget-object v1, p2, Llwc;->d:Llvv;

    invoke-virtual {v0, v1}, Llvv;->a(Llvv;)V

    .line 183
    iget-object v0, p2, Lmdr;->b:Llxf;

    invoke-virtual {p0, v0}, Lmdr;->a(Llxf;)V

    goto :goto_0

    .line 187
    :pswitch_6
    sget-object p0, Lmdr;->e:Lmdr;

    goto :goto_0

    .line 190
    :pswitch_7
    sget-object v0, Lmdr;->g:Llwt;

    if-nez v0, :cond_8

    const-class v1, Lmdr;

    monitor-enter v1

    .line 191
    :try_start_0
    sget-object v0, Lmdr;->g:Llwt;

    if-nez v0, :cond_7

    .line 192
    new-instance v0, Llvi;

    sget-object v2, Lmdr;->e:Lmdr;

    invoke-direct {v0, v2}, Llvi;-><init>(Llvy;)V

    sput-object v0, Lmdr;->g:Llwt;

    .line 194
    :cond_7
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 196
    :cond_8
    sget-object p0, Lmdr;->g:Llwt;

    goto :goto_0

    .line 194
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 146
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method public a(Llvq;)V
    .locals 1

    .prologue
    .line 49
    invoke-virtual {p0}, Lmdr;->k()Llwd;

    move-result-object v0

    .line 50
    invoke-virtual {v0, p1}, Llwd;->a(Llvq;)V

    .line 51
    iget-object v0, p0, Lmdr;->b:Llxf;

    invoke-virtual {v0, p1}, Llxf;->a(Llvq;)V

    .line 52
    return-void
.end method

.method public m()I
    .locals 2

    .prologue
    .line 55
    iget v0, p0, Lmdr;->c:I

    .line 56
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 62
    :goto_0
    return v0

    .line 59
    :cond_0
    invoke-virtual {p0}, Lmdr;->l()I

    move-result v0

    add-int/lit8 v0, v0, 0x0

    .line 60
    iget-object v1, p0, Lmdr;->b:Llxf;

    invoke-virtual {v1}, Llxf;->b()I

    move-result v1

    add-int/2addr v0, v1

    .line 61
    iput v0, p0, Lmdr;->c:I

    goto :goto_0
.end method
