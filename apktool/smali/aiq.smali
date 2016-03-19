.class public final Laiq;
.super Laae;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Laae;"
    }
.end annotation


# instance fields
.field private final a:Laip;


# direct methods
.method public constructor <init>(Lahw;Laho;Lahp;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 80
    invoke-direct {p0}, Laae;-><init>()V

    .line 82
    new-instance v0, Lahn;

    const/4 v1, 0x5

    invoke-direct {v0, p1, p2, p3, v1}, Lahn;-><init>(Lahw;Laho;Lahp;I)V

    .line 84
    new-instance v1, Laip;

    invoke-direct {v1, v0}, Laip;-><init>(Landroid/widget/AbsListView$OnScrollListener;)V

    iput-object v1, p0, Laiq;->a:Laip;

    .line 85
    return-void
.end method


# virtual methods
.method public a(Landroid/support/v7/widget/RecyclerView;II)V
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Laiq;->a:Laip;

    invoke-virtual {v0, p1, p2, p3}, Laip;->a(Landroid/support/v7/widget/RecyclerView;II)V

    .line 90
    return-void
.end method
