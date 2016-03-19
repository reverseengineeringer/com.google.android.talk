.class final Lcvp;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable",
        "<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcvo;


# direct methods
.method constructor <init>(Lcvo;)V
    .locals 0

    .prologue
    .line 257
    iput-object p1, p0, Lcvp;->a:Lcvo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a()Ljava/lang/Void;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 260
    iget-object v1, p0, Lcvp;->a:Lcvo;

    monitor-enter v1

    .line 261
    :try_start_0
    iget-object v0, p0, Lcvp;->a:Lcvo;

    .line 1088
    iget-object v0, v0, Lcvo;->c:Ljava/io/Writer;

    .line 261
    if-nez v0, :cond_0

    .line 262
    monitor-exit v1

    .line 270
    :goto_0
    return-object v3

    .line 264
    :cond_0
    iget-object v0, p0, Lcvp;->a:Lcvo;

    .line 2088
    invoke-virtual {v0}, Lcvo;->c()V

    .line 265
    iget-object v0, p0, Lcvp;->a:Lcvo;

    .line 3088
    invoke-virtual {v0}, Lcvo;->b()Z

    move-result v0

    .line 265
    if-eqz v0, :cond_1

    .line 266
    iget-object v0, p0, Lcvp;->a:Lcvo;

    .line 4088
    invoke-virtual {v0}, Lcvo;->a()V

    .line 267
    iget-object v0, p0, Lcvp;->a:Lcvo;

    .line 5088
    const/4 v2, 0x0

    iput v2, v0, Lcvo;->d:I

    .line 269
    :cond_1
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method public synthetic call()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 257
    invoke-direct {p0}, Lcvp;->a()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method
