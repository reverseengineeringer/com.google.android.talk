.class public final Lhhr;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final synthetic a:Lhci;


# direct methods
.method public constructor <init>(Lhci;)V
    .locals 0

    .prologue
    .line 3583
    iput-object p1, p0, Lhhr;->a:Lhci;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lkkb;)V
    .locals 2

    .prologue
    .line 2586
    iget-object v0, p0, Lhhr;->a:Lhci;

    invoke-static {p1}, Llyi;->a(Llyi;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Lhci;->a([B)V

    .line 2587
    return-void
.end method
