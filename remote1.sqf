////////////////////////////////////
////			                 //
//      Copyright © TCG         //
//www.tcgaming.enjin.com       //
////////////////////////////////


countygate animate ["innergate",1]; countygate say "fanceopen";
countygate animate ["outergate",1]; countygate say "fanceopen";
player groupchat "Closing Gate in 15 seconds";
sleep 15;
countygate animate ["innergate",0]; countygate say "fanceopen";
countygate animate ["outergate",0]; countygate say "fanceopen";
