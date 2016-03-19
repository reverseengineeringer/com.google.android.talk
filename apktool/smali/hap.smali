.class public final Lhap;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lapi;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lapi",
        "<",
        "Lham;",
        "Ljava/nio/ByteBuffer;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:La;

.field private final b:La;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 163
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lhap;-><init>(B)V

    .line 164
    return-void
.end method

.method private constructor <init>(B)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 176
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 177
    iput-object v0, p0, Lhap;->a:La;

    .line 178
    iput-object v0, p0, Lhap;->b:La;

    .line 179
    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;Lapo;)Lapg;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lapo;",
            ")",
            "Lapg",
            "<",
            "Lham;",
            "Ljava/nio/ByteBuffer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 184
    new-instance v0, Lhan;

    const-class v1, Laot;

    const-class v2, Ljava/nio/ByteBuffer;

    invoke-virtual {p2, v1, v2}, Lapo;->a(Ljava/lang/Class;Ljava/lang/Class;)Lapg;

    move-result-object v1

    iget-object v2, p0, Lhap;->a:La;

    iget-object v3, p0, Lhap;->b:La;

    invoke-direct {v0, v1, v2, v3}, Lhan;-><init>(Lapg;La;La;)V

    return-object v0
.end method
