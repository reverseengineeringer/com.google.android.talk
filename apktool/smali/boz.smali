.class final Lboz;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcpu;


# instance fields
.field final synthetic a:Lbng;


# direct methods
.method constructor <init>(Lbng;)V
    .locals 0

    .prologue
    .line 6858
    iput-object p1, p0, Lboz;->a:Lbng;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lilh;)Lboz;
    .locals 1

    .prologue
    .line 6865
    const-class v0, Lcpu;

    invoke-virtual {p1, v0, p0}, Lilh;->a(Ljava/lang/Class;Ljava/lang/Object;)Lilh;

    .line 6866
    return-object p0
.end method

.method public a(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 6861
    iget-object v0, p0, Lboz;->a:Lbng;

    .line 7285
    iget-object v0, v0, Lbng;->aN:Lbmx;

    .line 6861
    invoke-virtual {v0, p1}, Lbmx;->a(Ljava/lang/CharSequence;)V

    .line 6862
    return-void
.end method
