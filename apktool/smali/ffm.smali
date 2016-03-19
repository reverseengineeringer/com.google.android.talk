.class final Lffm;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final a:Lbcm;


# direct methods
.method public constructor <init>(Lbcm;)V
    .locals 0

    .prologue
    .line 2469
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2470
    iput-object p1, p0, Lffm;->a:Lbcm;

    .line 2471
    return-void
.end method


# virtual methods
.method public a(Landroid/net/Uri;Landroid/graphics/Bitmap;)V
    .locals 2

    .prologue
    .line 1475
    iget-object v0, p0, Lffm;->a:Lbcm;

    new-instance v1, Lffa;

    invoke-direct {v1, p1, p2}, Lffa;-><init>(Landroid/net/Uri;Landroid/graphics/Bitmap;)V

    invoke-interface {v0, v1}, Lbcm;->a(Lbcn;)Lbcg;

    .line 1476
    return-void
.end method
