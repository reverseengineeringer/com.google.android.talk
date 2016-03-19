.class public final Lcf;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final synthetic a:Lav;

.field final synthetic b:Lan;


# direct methods
.method constructor <init>(Lan;Lav;)V
    .locals 0

    .prologue
    .line 3188
    iput-object p1, p0, Lcf;->b:Lan;

    iput-object p2, p0, Lcf;->a:Lav;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Landroid/view/View;
    .locals 1

    .prologue
    .line 2191
    iget-object v0, p0, Lcf;->a:Lav;

    invoke-virtual {v0}, Lav;->getView()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method
