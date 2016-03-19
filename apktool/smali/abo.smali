.class final Labo;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/app/ActionBar$OnMenuVisibilityListener;


# instance fields
.field final synthetic a:Labm;

.field private final b:Labn;


# direct methods
.method public constructor <init>(Labm;Labn;)V
    .locals 0

    .prologue
    .line 17
    iput-object p1, p0, Labo;->a:Labm;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p2, p0, Labo;->b:Labn;

    .line 19
    return-void
.end method


# virtual methods
.method public onMenuVisibilityChanged(Z)V
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Labo;->b:Labn;

    invoke-virtual {v0, p1}, Labn;->a(Z)V

    .line 24
    return-void
.end method
