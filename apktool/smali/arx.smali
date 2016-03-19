.class public final Larx;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lajb;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lajb",
        "<",
        "Ljava/io/InputStream;",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Larm;

.field private final b:Lamg;


# direct methods
.method public constructor <init>(Larm;Lamg;)V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Larx;->a:Larm;

    .line 26
    iput-object p2, p0, Larx;->b:Lamg;

    .line 27
    return-void
.end method

.method private a(Ljava/io/InputStream;IILaja;)Lalr;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            "II",
            "Laja;",
            ")",
            "Lalr",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .prologue
    .line 41
    instance-of v0, p1, Larv;

    if-eqz v0, :cond_1

    .line 42
    check-cast p1, Larv;

    .line 43
    const/4 v0, 0x0

    move v6, v0

    .line 53
    :goto_0
    invoke-static {p1}, Lavl;->a(Ljava/io/InputStream;)Lavl;

    move-result-object v7

    .line 59
    new-instance v1, Lavo;

    invoke-direct {v1, v7}, Lavo;-><init>(Ljava/io/InputStream;)V

    .line 60
    new-instance v5, Lary;

    invoke-direct {v5, p1, v7}, Lary;-><init>(Larv;Lavl;)V

    .line 62
    :try_start_0
    iget-object v0, p0, Larx;->a:Larm;

    move v2, p2

    move v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Larm;->a(Ljava/io/InputStream;IILaja;Laro;)Lalr;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 64
    invoke-virtual {v7}, Lavl;->b()V

    .line 65
    if-eqz v6, :cond_0

    .line 66
    invoke-virtual {p1}, Larv;->b()V

    :cond_0
    return-object v0

    .line 45
    :cond_1
    new-instance v1, Larv;

    iget-object v0, p0, Larx;->b:Lamg;

    invoke-direct {v1, p1, v0}, Larv;-><init>(Ljava/io/InputStream;Lamg;)V

    .line 46
    const/4 v0, 0x1

    move v6, v0

    move-object p1, v1

    goto :goto_0

    .line 64
    :catchall_0
    move-exception v0

    invoke-virtual {v7}, Lavl;->b()V

    .line 65
    if-eqz v6, :cond_2

    .line 66
    invoke-virtual {p1}, Larv;->b()V

    :cond_2
    throw v0
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;IILaja;)Lalr;
    .locals 1

    .prologue
    .line 19
    check-cast p1, Ljava/io/InputStream;

    invoke-direct {p0, p1, p2, p3, p4}, Larx;->a(Ljava/io/InputStream;IILaja;)Lalr;

    move-result-object v0

    return-object v0
.end method

.method public synthetic a(Ljava/lang/Object;Laja;)Z
    .locals 1

    .prologue
    .line 1031
    invoke-static {}, Larm;->a()Z

    move-result v0

    .line 19
    return v0
.end method
